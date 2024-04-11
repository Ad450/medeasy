import 'package:core/domain/repository/patient.dart';
import 'package:core/models/common/appointment.dart';
import 'package:core/utils/errors.dart';
import 'package:core/utils/typedefs.dart';
import 'package:dartz/dartz.dart';

class ScheduleAppointment implements Usecase<VoidType, Appointment> {
  final PatientRepository _patientRepository;
  ScheduleAppointment(this._patientRepository);
  @override
  Future<Either<MedeasyError, VoidType>> call(Appointment param) async {
    try {
      return Right(await _patientRepository.scheduleAppointment(param));
    } catch (e) {
      return Left(MedeasyError.fromApiError((e as ApiError).message));
    }
  }
}
