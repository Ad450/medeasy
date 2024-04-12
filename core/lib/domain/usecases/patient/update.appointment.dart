import 'package:core/domain/repository/patient.dart';
import 'package:core/utils/errors.dart';
import 'package:core/utils/typedefs.dart';
import 'package:dartz/dartz.dart';

class UpdateAppointment implements Usecase<VoidType, UpdateAppointmentParams> {
  final PatientRepository _patientRepository;
  UpdateAppointment(this._patientRepository);
  @override
  Future<Either<MedeasyError, VoidType>> call(UpdateAppointmentParams param) async {
    try {
      return Right(
        await _patientRepository.updateAppointment(
          startTime: param.startTime,
          dayId: param.dayId,
          closingTime: param.closingTime,
          appointmentId: param.appointmentId,
          problemDetail: param.problemDetail,
        ),
      );
    } catch (e) {
      return Left(MedeasyError.fromApiError((e as ApiError).message));
    }
  }
}

class UpdateAppointmentParams {
  final String? startTime;
  final String? closingTime;
  final String? dayId;
  final String? problemDetail;
  final String appointmentId;

  UpdateAppointmentParams({
    this.startTime,
    this.closingTime,
    this.dayId,
    this.problemDetail,
    required this.appointmentId,
  });
}
