import 'package:core/models/common/appointment.dart';
import 'package:core/utils/typedefs.dart';

sealed class PatientRepository {
  Future<VoidType> scheduleAppointment(Appointment appointment);
  Future<VoidType> updateAppointment({
    String? time,
    DateTime? date,
    String? problemDetail,
  });
}

class PatientRepositoryImpl implements PatientRepository {
  @override
  Future<VoidType> scheduleAppointment(Appointment appointment) {
    // TODO: implement scheduleAppointment
    throw UnimplementedError();
  }

  @override
  Future<VoidType> updateAppointment({
    String? time,
    DateTime? date,
    String? problemDetail,
  }) {
    // TODO: implement updateAppointment
    throw UnimplementedError();
  }
}
