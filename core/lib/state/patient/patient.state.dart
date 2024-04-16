part of "patient.cubit.dart";

@freezed
class PatientState with _$PatientState {
  factory PatientState.initial() = _PatientStateInitial;

  factory PatientState.scheduleAppointmentLoading() = _PatientStateScheduleAppointmentLoading;
  factory PatientState.scheduleAppointmentError(String message) = _PatientStateScheduleAppointmentError;
  factory PatientState.scheduleAppointmentSuccess() = _PatientStateScheduleAppointmentSuccess;

  factory PatientState.updateAppointmentLoading() = _PatientStateUpdateAppointmentLoading;
  factory PatientState.updateAppointmentError(String message) = _PatientStateUpdateAppointmentError;
  factory PatientState.updateAppointmentSuccess() = _PatientStateUpdateAppointmentSuccess;
}
