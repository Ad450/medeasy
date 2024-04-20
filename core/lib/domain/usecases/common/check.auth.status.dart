import 'package:core/domain/repository/common.dart';
import 'package:core/utils/errors.dart';
import 'package:core/utils/typedefs.dart';
import 'package:dartz/dartz.dart';

class CheckAuthStatus implements Usecase<bool, NoParam> {
  final CommonRepository _commonRepository;
  CheckAuthStatus(this._commonRepository);
  @override
  Future<Either<MedeasyError, bool>> call(NoParam param) async {
    try {
      return Right(_commonRepository.checkAuthStatus());
    } catch (e) {
      return Left(MedeasyError.fromApiError((e as ApiError).message));
    }
  }
}
