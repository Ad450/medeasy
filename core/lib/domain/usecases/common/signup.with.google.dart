import 'package:core/domain/repository/common.dart';
import 'package:core/utils/errors.dart';
import 'package:core/utils/typedefs.dart';
import 'package:dartz/dartz.dart';

class SignupWithGoogle implements Usecase<VoidType, UserType> {
  final CommonRepository _commonRepository;
  SignupWithGoogle(this._commonRepository);
  @override
  Future<Either<MedeasyError, VoidType>> call(UserType param) async {
    try {
      return Right(await _commonRepository.signupWithGoogle(param));
    } catch (e) {
      return Left(MedeasyError.fromApiError((e as ApiError).message));
    }
  }
}
