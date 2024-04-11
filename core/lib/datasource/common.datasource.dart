import 'package:core/models/common/appointment.dart';
import 'package:core/storage/firestore/firestore.storage.dart';
import 'package:core/utils/errors.dart';
import 'package:core/utils/typedefs.dart';

sealed class CommonDatasource {
  Future<VoidType> signupWithEmailAndPassword({required String email, required String password});

  Future<VoidType> signupWithGoogle();
  Future<VoidType> signupWithFacebook();

  Stream<List<Appointment>> fetchAllAppointments({required String id, required FetchAppointmentType type});
  Future<VoidType> updateProfile(UpdateProfileParams params);
}

class CommonDatasourceImpl implements CommonDatasource {
  final FirestoreStorage _firestoreStorage;

  CommonDatasourceImpl(this._firestoreStorage);

  @override
  Stream<List<Appointment>> fetchAllAppointments({required String id, required FetchAppointmentType type}) {
    try {
      final key = type == FetchAppointmentType.patient ? 'patient_id' : 'practitioner_id';
      var appointmentStream = _firestoreStorage.getByUidStream(
        uid: id,
        collection: Collection.appointments,
        key: key,
      );
      return appointmentStream.map(
        (snapshot) => snapshot.docs.map((e) => Appointment.fromJson(e.data() as Map<String, Object?>)).toList(),
      );
    } catch (e) {
      throw ApiError(e.toString(), source: "fetchAllAppointments");
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
  Future<VoidType> updateProfile(UpdateProfileParams params) async {
    try {
      final data = params.toJson(
        params.firstName,
        params.lastName,
        params.age,
        params.profilePicture,
        params.isPractitioner,
        params.specialty,
      );
      await _firestoreStorage.update(uid: params.id, collection: Collection.patients, data: data);
      return const VoidType();
    } catch (e) {
      throw ApiError(e.toString(), source: "updateProfile");
    }
  }
}
