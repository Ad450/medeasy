import 'package:core/domain/repository/common.dart';
import 'package:core/utils/errors.dart';
import 'package:core/utils/typedefs.dart';
import 'package:dartz/dartz.dart';

class SignupWithGoogle implements Usecase<VoidType, SignupWithGoogleParam> {
  final CommonRepository _commonRepository;
  SignupWithGoogle(this._commonRepository);
  @override
  Future<Either<MedeasyError, VoidType>> call(SignupWithGoogleParam param) async {
    try {
      return Right(await _commonRepository.signupWithGoogle(param.type));
    } catch (e) {
      return Left(MedeasyError.fromApiError((e as ApiError).message));
    }
  }
}

class SignupWithGoogleParam {
  final UserType type;

  SignupWithGoogleParam(this.type);
}
