import 'package:core/di/locator.dart';
import 'package:core/domain/usecases/patient/fetch.patient.profile.dart';
import 'package:core/domain/usecases/patient/schedule.appointment.dart';
import 'package:core/domain/usecases/patient/update.appointment.dart';
import 'package:core/models/patient/patient.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient.cubit.freezed.dart';
part 'patient.state.dart';

class PatientCubit extends Cubit<PatientState> {
  final FetchPatientProfile _fetchPatientProfile;
  final ScheduleAppointment _scheduleAppointment;
  final UpdateAppointment _updateAppointment;
  PatientCubit()
      : _fetchPatientProfile = locator.get<FetchPatientProfile>(),
        _scheduleAppointment = locator.get<ScheduleAppointment>(),
        _updateAppointment = locator.get<UpdateAppointment>(),
        super(PatientState.initial());

  Stream<Patient> fetchPatientProfile() => _fetchPatientProfile();

  Future<void> scheduleAppointment({
    required String dayId,
    required String serviceId,
    required String patientId,
    required String healthRecordFile,
    required String practitionerId,
    required String problemDetail,
    required String startTime,
    required String closingTime,
  }) async {
    emit(PatientState.scheduleAppointmentLoading());
    final result = await _scheduleAppointment(
      ScheduleAppointmentParam(
        dayId: dayId,
        serviceId: serviceId,
        patientId: patientId,
        healthRecordFile: healthRecordFile,
        practitionerId: practitionerId,
        problemDetail: problemDetail,
        startTime: startTime,
        closingTime: closingTime,
      ),
    );
    result.fold(
      (l) => emit(PatientState.scheduleAppointmentError(l.message)),
      (r) => emit(PatientState.scheduleAppointmentSuccess()),
    );
  }

  Future<void> updateAppointment({
    required String appointmentId,
    String? startTime,
    String? closingTime,
    String? dayId,
    String? problemDetail,
  }) async {
    emit(PatientState.updateAppointmentLoading());
    final result = await _updateAppointment(
      UpdateAppointmentParams(
        appointmentId: appointmentId,
        startTime: startTime,
        closingTime: closingTime,
        dayId: dayId,
        problemDetail: problemDetail,
      ),
    );
    result.fold(
      (l) => emit(PatientState.updateAppointmentError(l.message)),
      (r) => emit(PatientState.updateAppointmentSuccess()),
    );
  }
}
