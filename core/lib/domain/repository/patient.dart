import 'package:core/models/common/appointment.dart';
import 'package:core/utils/typedefs.dart';

abstract class PatientRepository {
  Future<VoidType> scheduleAppointment(Appointment appointment);
  Future<VoidType> updateAppointment(UpdateAppointmentParams params);
}
