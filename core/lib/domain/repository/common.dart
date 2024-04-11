import 'package:core/models/common/appointment.dart';
import 'package:core/utils/typedefs.dart';

abstract class CommonRepository {
  Future<VoidType> signupWithEmailAndPassword({required String email, required String password});

  Future<VoidType> signupWithGoogle();
  Future<VoidType> signupWithFacebook();

  Stream<Appointment> fetchAllAppointments({required String id, required FetchAppointmentType type});
  Future<VoidType> updateProfile(UpdateProfileParams params);
}
