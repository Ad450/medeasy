import 'package:core/domain/repository/patient.dart';
import 'package:core/utils/errors.dart';
import 'package:core/utils/typedefs.dart';
import 'package:dartz/dartz.dart';

class ScheduleAppointment implements Usecase<VoidType, ScheduleAppointmentParam> {
  final PatientRepository _patientRepository;
  ScheduleAppointment(this._patientRepository);
  @override
  Future<Either<MedeasyError, VoidType>> call(ScheduleAppointmentParam param) async {
    try {
      return Right(await _patientRepository.scheduleAppointment(
        serviceId: param.serviceId,
        practitionerId: param.practitionerId,
        dayId: param.dayId,
        patientId: param.patientId,
        problemDetail: param.problemDetail,
        healthRecordFile: param.healthRecordFile,
        startTime: param.startTime,
        closingTime: param.closingTime,
      ));
    } catch (e) {
      return Left(MedeasyError.fromApiError((e as ApiError).message));
    }
  }
}

class ScheduleAppointmentParam {
  final String serviceId;
  final String practitionerId;
  final String dayId;
  final String patientId;
  final String problemDetail;
  final String? healthRecordFile;
  final String startTime;
  final String closingTime;

  ScheduleAppointmentParam({
    required this.dayId,
    required this.serviceId,
    required this.patientId,
    required this.healthRecordFile,
    required this.practitionerId,
    required this.problemDetail,
    required this.startTime,
    required this.closingTime,
  });
}
