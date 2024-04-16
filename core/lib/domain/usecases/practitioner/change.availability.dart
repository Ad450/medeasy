import 'package:core/domain/repository/practitioner.dart';
import 'package:core/utils/errors.dart';
import 'package:core/utils/typedefs.dart';
import 'package:dartz/dartz.dart';

class ChangeAvailability implements Usecase<VoidType, String> {
  final PractitionerRepository _practitionerRepository;
  ChangeAvailability(this._practitionerRepository);

  @override
  Future<Either<MedeasyError, VoidType>> call(String dayId) async {
    try {
      return Right(await _practitionerRepository.changeAvailability(dayId));
    } catch (e) {
      return Left(MedeasyError.fromApiError((e as ApiError).message));
    }
  }
}
