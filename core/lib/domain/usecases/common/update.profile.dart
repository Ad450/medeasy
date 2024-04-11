import 'package:core/domain/repository/common.dart';
import 'package:core/utils/errors.dart';
import 'package:core/utils/typedefs.dart';
import 'package:dartz/dartz.dart';

class UpdateProfile implements Usecase<VoidType, UpdateProfileParams> {
  final CommonRepository _commonRepository;
  UpdateProfile(this._commonRepository);
  @override
  Future<Either<MedeasyError, VoidType>> call(UpdateProfileParams param) async {
    try {
      return Right(await _commonRepository.updateProfile(param));
    } catch (e) {
      return Left(MedeasyError.fromApiError((e as ApiError).message));
    }
  }
}
