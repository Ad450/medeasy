import 'package:core/models/common/appointment.dart';
import 'package:core/utils/typedefs.dart';

sealed class PatientDatasource {
  Future<VoidType> scheduleAppointment(Appointment appointment);
  Future<VoidType> updateAppointment(UpdateAppointmentParams params);
}

class PatientDatasourceImpl implements PatientDatasource {
  @override
  Future<VoidType> scheduleAppointment(Appointment appointment) {
    // TODO: implement scheduleAppointment
    throw UnimplementedError();
  }

  @override
  Future<VoidType> updateAppointment(UpdateAppointmentParams params) {
    // TODO: implement updateAppointment
    throw UnimplementedError();
  }
}
