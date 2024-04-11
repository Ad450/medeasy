import 'package:core/domain/repository/common.dart';
import 'package:core/models/common/appointment.dart';
import 'package:core/utils/errors.dart';
import 'package:core/utils/typedefs.dart';
import 'package:dartz/dartz.dart';

class FetchAllAppointments
    implements Usecase<Stream<Appointment>, FetchAllAppointmentsParam> {
  final CommonRepository _commonRepository;
  FetchAllAppointments(this._commonRepository);
  @override
  Future<Either<MedeasyError, Stream<Appointment>>> call(
      FetchAllAppointmentsParam param) async {
    try {
      return Right(_commonRepository.fetchAllAppointments(
          id: param.id, type: param.type));
    } catch (e) {
      return Left(MedeasyError.fromApiError((e as ApiError).message));
    }
  }
}

sealed class FetchAllAppointmentsParam {
  final String id;
  final FetchAppointmentType type;
  FetchAllAppointmentsParam({
    required this.id,
    required this.type,
  });
}
