import 'package:core/di/locator.dart';
import 'package:core/domain/usecases/common/fetch.all.appointments.dart';
import 'package:core/domain/usecases/patient/fetch.patient.profile.dart';
import 'package:core/domain/usecases/common/signup.with.email.password.dart';
import 'package:core/domain/usecases/common/signup.with.google.dart';
import 'package:core/domain/usecases/common/update.profile.dart';
import 'package:core/domain/usecases/practitioner/fetch.practitioner.profile.dart';
import 'package:core/models/common/appointment.dart';
import 'package:core/models/patient/patient.dart';
import 'package:core/models/practitioner/practitioner.dart';
import 'package:core/utils/typedefs.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'common.state.dart';
part 'common.cubit.freezed.dart';

class CommonCubit extends Cubit<CommonState> {
  final FetchAllAppointments _fetchAllAppointments;
  final SignupWithEmailAndPassword _signupWithEmailAndPassword;
  final SignupWithGoogle _signupWithGoogle;
  final UpdateProfile _updateProfile;
  final FetchPatientProfile _fetchPatientProfile;
  final FetchPractitionerProfile _fetchPractitionerProfile;

  CommonCubit()
      : _fetchAllAppointments = locator.get<FetchAllAppointments>(),
        _fetchPatientProfile = locator.get<FetchPatientProfile>(),
        _signupWithEmailAndPassword = locator.get<SignupWithEmailAndPassword>(),
        _signupWithGoogle = locator.get<SignupWithGoogle>(),
        _updateProfile = locator.get<UpdateProfile>(),
        _fetchPractitionerProfile = locator.get<FetchPractitionerProfile>(),
        super(CommonState.initial());

  Stream<List<Appointment>> fetchAllPatientAppointments() => _fetchAllAppointments(UserType.patient);

  Stream<List<Appointment>> fetchAllPractitionerAppointments() => _fetchAllAppointments(UserType.practitioner);

  Stream<Patient> fetchPatientProfile() => _fetchPatientProfile();

  Stream<Practitioner> fetchPractitionerProfile() => _fetchPractitionerProfile();

  Future<void> signupPatientWithEmailAndPassword(String email, String password) async {
    emit(CommonState.signupWithEmailAndPasswordLoading());
    final result = await _signupWithEmailAndPassword(
      SignupWithEmailAndPasswordParam(
        email: email,
        rawPassword: password,
        type: UserType.patient,
      ),
    );

    result.fold(
      (l) => emit(CommonState.signupWithEmailAndPasswordError(l.message)),
      (r) => emit(CommonState.signupWithEmailAndPasswordLoading()),
    );
  }

  Future<void> signupPractitionerWithEmailAndPassword(String email, String password) async {
    emit(CommonState.signupWithEmailAndPasswordLoading());
    final result = await _signupWithEmailAndPassword(
      SignupWithEmailAndPasswordParam(
        email: email,
        rawPassword: password,
        type: UserType.practitioner,
      ),
    );

    result.fold(
      (l) => emit(CommonState.signupWithEmailAndPasswordError(l.message)),
      (r) => emit(CommonState.signupWithEmailAndPasswordSuccess()),
    );
  }

  Future<void> signupPractitionerWithGoogle(String email, String password) async {
    emit(CommonState.signupWithGoogleLoading());
    final result = await _signupWithGoogle(UserType.practitioner);

    result.fold(
      (l) => emit(CommonState.signupWithGoogleError(l.message)),
      (r) => emit(CommonState.signupWithGoogleSuccess()),
    );
  }

  Future<void> signupPatientWithGoogle(String email, String password) async {
    emit(CommonState.signupWithGoogleLoading());
    final result = await _signupWithGoogle(UserType.patient);

    result.fold(
      (l) => emit(CommonState.signupWithGoogleError(l.message)),
      (r) => emit(CommonState.signupWithGoogleSuccess()),
    );
  }

  Future<void> updatePatientProfile({
    String? firstName,
    String? lastName,
    String? age,
    String? profilePicture,
    String? specialty,
  }) async {
    emit(CommonState.updateProfileLoading());
    final result = await _updateProfile(
      UpdateProfileParams(
        firstName: firstName,
        lastName: lastName,
        profilePicture: profilePicture,
        specialty: specialty,
      ),
    );

    result.fold(
      (l) => emit(CommonState.updateProfileError(l.message)),
      (r) => emit(CommonState.updateProfileSuccess()),
    );
  }

  Future<void> updatePractitionerProfile({
    String? firstName,
    String? lastName,
    String? age,
    String? profilePicture,
    String? specialty,
  }) async {
    assert(specialty != null);
    emit(CommonState.updateProfileLoading());
    final result = await _updateProfile(
      UpdateProfileParams(
        firstName: firstName,
        lastName: lastName,
        profilePicture: profilePicture,
        specialty: specialty,
        isPractitioner: true,
      ),
    );

    result.fold(
      (l) => emit(CommonState.updateProfileError(l.message)),
      (r) => emit(CommonState.updateProfileSuccess()),
    );
  }
}
