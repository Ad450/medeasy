import 'package:core/models/common/appointment.dart';
import 'package:core/storage/firestore/firestore.storage.dart';
import 'package:core/utils/errors.dart';
import 'package:core/utils/typedefs.dart';

sealed class CommonRepository {
  Future<VoidType> signupWithEmailAndPassword({required String email, required String password});

  Future<VoidType> signupWithGoogle();
  Future<VoidType> signupWithFacebook();

  Stream<List<Appointment>> fetchAllAppointments({required String id, required FetchAppointmentType type});
  Future<VoidType> updateProfile(Map<String, dynamic> data);
}

class CommonRepositoryImpl implements CommonRepository {
  final FirestoreStorage _firestoreStorage;

  CommonRepositoryImpl(this._firestoreStorage);

  @override
  Stream<List<Appointment>> fetchAllAppointments({required String id, required FetchAppointmentType type}) {
    try {
      var appointmentStream = _firestoreStorage.getByIdStream(
        id: id,
        collection: Collection.appointments,
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
  Future<VoidType> updateProfile(Map<String, dynamic> data) async {
    try {
      await _firestoreStorage.update(id: data['id'], collection: Collection.patients, data: data['data']);
      return const VoidType();
    } catch (e) {
      throw ApiError(e.toString(), source: "updateProfile");
    }
  }
}
