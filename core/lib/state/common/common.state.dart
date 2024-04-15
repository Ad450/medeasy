part of 'common.cubit.dart';

@freezed
sealed class CommonState with _$CommonState {
  factory CommonState.initial() = _CommonStateInitial;

  factory CommonState.fetchAllAppointmentsLoading() = _CommonStateFetchAllAppointmentsLoading;
  factory CommonState.fetchAllAppointmentsError(String message) = _CommonStateFetchAllAppointmentsError;
  factory CommonState.fetchAllAppointmentsSuccess(Set<Appointment> appointments) =
      _CommonStateFetchAllAppointmentsSuccess;

  factory CommonState.fetchPractitionerProfileLoading() = _CommonStateFetchPractitionerProfileLoading;
  factory CommonState.fetchPractitionerProfileError(String message) = _CommonStateFetchPractitionerProfileError;
  factory CommonState.fetchPractitionerProfileSuccess(Practitioner practitioner) =
      _CommonStateFetchPractitionerProfileSuccess;

  factory CommonState.fetchPatientProfileLoading() = _CommonStateFetchPatientProfileLoading;
  factory CommonState.fetchPatientProfileError(String message) = _CommonStateFetchPatientProfileError;
  factory CommonState.fetchPatientProfileSuccess(Patient patient) = _CommonStateFetchPatientProfileSuccess;

  factory CommonState.signupWithEmailAndPasswordLoading() = _CommonStateSignupWithEmailAndPasswordLoading;
  factory CommonState.signupWithEmailAndPasswordError(String message) = _CommonStateSignupWithEmailAndPasswordError;
  factory CommonState.signupWithEmailAndPasswordSuccess() = _CommonStateSignupWithEmailAndPasswordSuccess;

  factory CommonState.signupWithGoogleLoading() = _CommonStateSignupWithGoogleLoading;
  factory CommonState.signupWithGoogleError(String message) = _CommonStateSignupWithGoogleError;
  factory CommonState.signupWithGoogleSuccess() = _CommonStateSignupWithGoogleSuccess;

  factory CommonState.updateProfileLoading() = _CommonStateUpdateProfileLoading;
  factory CommonState.updateProfileError(String message) = _CommonStateUpdateProfileError;
  factory CommonState.updateProfileSuccess() = _CommonStateUpdateProfileSuccess;
}
