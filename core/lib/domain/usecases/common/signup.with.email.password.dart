import 'package:core/domain/repository/common.dart';
import 'package:core/utils/errors.dart';
import 'package:core/utils/typedefs.dart';
import 'package:dartz/dartz.dart';

class SignupWithEmailAndPassword
    implements Usecase<VoidType, SignupWithEmailAndPasswordParam> {
  final CommonRepository _commonRepository;
  SignupWithEmailAndPassword(this._commonRepository);
  @override
  Future<Either<MedeasyError, VoidType>> call(
      SignupWithEmailAndPasswordParam param) async {
    try {
      return Right(await _commonRepository.signupWithEmailAndPassword(
          email: param.email, password: param.password));
    } catch (e) {
      return Left(MedeasyError.fromApiError((e as ApiError).message));
    }
  }
}

sealed class SignupWithEmailAndPasswordParam {
  final String email;
  final String password;
  SignupWithEmailAndPasswordParam(
      {required this.email, required String rawPassword})
      : assert(rawPassword.length > 8),
        password = _hashPassword(rawPassword);

  static String _hashPassword(String password) => password.hashCode.toString();
}
