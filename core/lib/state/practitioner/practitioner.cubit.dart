import 'package:core/core.dart';
import 'package:core/di/locator.dart';
import 'package:core/domain/usecases/practitioner/fetch.practitioner.profile.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'practitioner.cubit.freezed.dart';
part 'practitioner.state.dart';

class PractitionerCubit extends Cubit<PractitionerState> {
  final FetchPractitionerProfile _fetchPractitionerProfile;
  final ChangeAvailability _changeAvailability;
  PractitionerCubit()
      : _fetchPractitionerProfile = locator.get<FetchPractitionerProfile>(),
        _changeAvailability = locator.get<ChangeAvailability>(),
        super(PractitionerState.initial());

  Stream<Practitioner> fetchPractitionerProfile() => _fetchPractitionerProfile();

  Future<void> changeAvailability(String dayId) async {
    emit(PractitionerState.changeAvailabilityLoading());
    final result = await _changeAvailability(dayId);
    result.fold(
      (l) => emit(PractitionerState.changeAvailabilityError(l.message)),
      (r) => emit(PractitionerState.changeAvailabilitySuccess()),
    );
  }
}
