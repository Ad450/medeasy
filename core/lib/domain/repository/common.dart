import 'package:core/models/common/appointment.dart';
import 'package:core/storage/firestore/firestore.storage.dart';
import 'package:core/storage/local/local.storage.dart';
import 'package:core/utils/errors.dart';
import 'package:core/utils/typedefs.dart';

sealed class CommonRepository {
  Future<VoidType> signupWithEmailAndPassword({required String email, required String password});

  Future<VoidType> signupWithGoogle();
  Future<VoidType> signupWithFacebook();

  Stream<List<Appointment>> fetchAllAppointments(FetchAppointmentType type);
  Future<VoidType> updateProfile(Map<String, dynamic> data);
}

class CommonRepositoryImpl implements CommonRepository {
  final FirestoreStorage _firestoreStorage;
  final LocalStorage _localStorage;

  CommonRepositoryImpl(this._firestoreStorage, this._localStorage);

  @override
  Stream<List<Appointment>> fetchAllAppointments(FetchAppointmentType type) {
    try {
      final id = _localStorage.getString(LocalKeys.id.name);
      final key = type == FetchAppointmentType.patient ? 'patient_id' : 'practitioner_id';
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
  Future<VoidType> signupWithEmailAndPassword({required String email, required String password}) {
    // TODO: implement signupWithEmailAndPassword
    throw UnimplementedError();
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
  Future<VoidType> updateProfile(Map<String, dynamic> data) async {
    try {
      await _firestoreStorage.update(id: data['id'], collection: Collection.patients, data: data['data']);
      return const VoidType();
    } catch (e) {
      throw ApiError(e.toString(), source: "updateProfile");
    }
  }
}
