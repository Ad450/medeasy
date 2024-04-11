import 'package:core/domain/repository/practitioner.dart';
import 'package:core/models/common/day.dart';
import 'package:core/utils/errors.dart';
import 'package:core/utils/typedefs.dart';
import 'package:dartz/dartz.dart';

class ChangeAvailablity implements Usecase<VoidType, Day> {
  final PractitionerRepository _practitionerRepository;
  ChangeAvailablity(this._practitionerRepository);

  @override
  Future<Either<MedeasyError, VoidType>> call(Day param) async {
    try {
      return Right(await _practitionerRepository.changeAvailability(param));
    } catch (e) {
      return Left(MedeasyError.fromApiError((e as ApiError).message));
    }
  }
}
