part of "practitioner.cubit.dart";

@freezed
class PractitionerState with _$PractitionerState {
  factory PractitionerState.initial() = _PatientStateInitial;

  factory PractitionerState.changeAvailabilityLoading() = _PractitionerStateChangeAvailabilityLoading;
  factory PractitionerState.changeAvailabilityError(String message) = _PractitionerStateChangeAvailabilityError;
  factory PractitionerState.changeAvailabilitySuccess() = _PractitionerStateChangeAvailabilitySuccess;
}
