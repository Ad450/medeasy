import 'package:core/domain/repository/common.dart';
import 'package:core/models/common/appointment.dart';
import 'package:core/utils/errors.dart';
import 'package:core/utils/typedefs.dart';
import 'package:dartz/dartz.dart';

class FetchAllAppointments implements Usecase<Stream<List<Appointment>>, FetchAllAppointmentsParam> {
  final CommonRepository _commonRepository;
  FetchAllAppointments(this._commonRepository);
  @override
  Future<Either<MedeasyError, Stream<List<Appointment>>>> call(FetchAllAppointmentsParam param) async {
    try {
      return Right(_commonRepository.fetchAllAppointments(param.type));
    } catch (e) {
      return Left(MedeasyError.fromApiError((e as ApiError).message));
    }
  }
}

sealed class FetchAllAppointmentsParam {
  final String id;
  final UserType type;
  FetchAllAppointmentsParam({
    required this.id,
    required this.type,
  });
}
