import 'package:core/domain/repository/patient.dart';
import 'package:core/utils/errors.dart';
import 'package:core/utils/typedefs.dart';
import 'package:dartz/dartz.dart';

class UpdateAppointment implements Usecase<VoidType, UpdateAppointmentParams> {
  final PatientRepository _patientRepository;
  UpdateAppointment(this._patientRepository);
  @override
  Future<Either<MedeasyError, VoidType>> call(
      UpdateAppointmentParams param) async {
    try {
      return Right(await _patientRepository.updateAppointment(param));
    } catch (e) {
      return Left(MedeasyError.fromApiError((e as ApiError).message));
    }
  }
}
