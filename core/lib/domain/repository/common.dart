import 'dart:ffi';

import 'package:core/core.dart';
import 'package:core/domain/usecases/common/update.profile.dart';
import 'package:core/models/common/appointment.dart';
import 'package:core/models/patient/patient.dart';
import 'package:core/storage/firestore/cloud.dart';
import 'package:core/storage/firestore/firestore.storage.dart';
import 'package:core/storage/local/local.storage.dart';
import 'package:core/utils/errors.dart';
import 'package:core/utils/typedefs.dart';
import 'package:firebase_auth/firebase_auth.dart';

sealed class CommonRepository {
  Future<VoidType> signupWithEmailAndPassword({
    required String email,
    required String password,
    required UserType type,
  });

  Future<VoidType> signupWithGoogle();
  Future<VoidType> signupWithFacebook();

  Stream<List<Appointment>> fetchAllAppointments(UserType type);
  Future<VoidType> updateProfile(UpdateProfileParams params);
  Stream<Patient> fetchProfile();
}

class CommonRepositoryImpl implements CommonRepository {
  final FirestoreStorage _firestoreStorage;
  final LocalStorage _localStorage;
  final CloudFirestore _cloudFirestore;

  CommonRepositoryImpl(this._firestoreStorage, this._localStorage, this._cloudFirestore);

  FirebaseAuth _getInstance() => FirebaseAuth.instance;

  @override
  Stream<List<Appointment>> fetchAllAppointments(UserType type) {
    try {
      final id = _localStorage.getString(LocalKeys.id.name);
      final key = type == UserType.patient ? 'patient_id' : 'practitioner_id';
      return _firestoreStorage.getByKeyValueStream(key: key, value: id, collection: Collection.appointments).map(
            (snapshot) => snapshot.docs
                .map(
                  (e) => Appointment.fromJson(e.data() as Map<String, dynamic>),
                )
                .toList(),
          );
    } catch (e) {
      throw ApiError(e.toString(), stackTrace: "fetchAllAppointments");
    }
  }

  @override
  Future<VoidType> signupWithEmailAndPassword({
    required String email,
    required String password,
    required UserType type,
  }) async {
    try {
      final credential = await _getInstance().createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (credential.user?.uid != null) {
        var data = type == UserType.patient
            ? Patient.create(firstName: "", lastName: "", age: 0, profilePicture: "").toJson()
            : Practitioner.create(
                firstName: "",
                lastName: "",
                age: 0,
                profilePicture: "",
                kycStatus: false,
                specialty: "",
                bio: "",
              ).toJson();
        await _firestoreStorage.add(
          collection: type == UserType.patient ? Collection.patients : Collection.practitioners,
          data: data,
        );
        return const VoidType();
      } else {
        throw ApiError("could not sign up - operation incomplete", source: "signupWithEmailAndPassword");
      }
    } on FirebaseAuthException catch (e) {
      throw ApiError(e.message ?? e.code, source: e.code);
    } catch (e) {
      throw ApiError(e.toString());
    }
  }

  @override
  Future<VoidType> signupWithFacebook() {
    // TODO: implement signupWithFacebook
    throw UnimplementedError();
  }

  @override
  Future<VoidType> signupWithGoogle() {
    // TODO: implement signupWithGoogle
    throw UnimplementedError();
  }

  @override
  Future<VoidType> updateProfile(UpdateProfileParams params) async {
    try {
      final id = _localStorage.getString(LocalKeys.id.name);
      var data = {...params.toJson()};

      if (params.profilePicture != null) {
        final url = await _cloudFirestore.upload(filepath: params.profilePicture!, id: id);
        data = {...params.toJson(), "profile_picture": url};
      }

      await _firestoreStorage.update(
        id: id,
        collection: params.isPractitioner ? Collection.practitioners : Collection.patients,
        data: data,
      );
      return const VoidType();
    } catch (e) {
      throw ApiError(e.toString(), source: "updateProfile");
    }
  }

  @override
  Stream<Patient> fetchProfile() {
    try {
      final id = _localStorage.getString(LocalKeys.id.name);
      var snapshot = _firestoreStorage.getByKeyValueStream(key: "id", value: id, collection: Collection.patients);
      return snapshot.map(
        (e) => e.docs.map((doc) => Patient.fromJson(doc.data() as Map<String, Object?>)).toList().first,
      );
    } catch (e) {
      throw ApiError(e.toString(), source: "fetchProfile");
    }
  }
}
