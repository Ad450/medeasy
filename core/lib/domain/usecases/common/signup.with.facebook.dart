import 'package:core/domain/repository/common.dart';
import 'package:core/utils/errors.dart';
import 'package:core/utils/typedefs.dart';
import 'package:dartz/dartz.dart';

class SignupWithFacebook implements Usecase<VoidType, NoParam> {
  final CommonRepository _commonRepository;
  SignupWithFacebook(this._commonRepository);
  @override
  Future<Either<MedeasyError, VoidType>> call(NoParam param) async {
    try {
      return Right(await _commonRepository.signupWithFacebook());
    } catch (e) {
      return Left(MedeasyError.fromApiException((e as ApiError).message));
    }
  }
}
