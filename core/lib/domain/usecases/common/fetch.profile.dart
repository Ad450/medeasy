import 'package:core/domain/repository/common.dart';
import 'package:core/models/patient/patient.dart';
import 'package:core/utils/errors.dart';
import 'package:core/utils/typedefs.dart';
import 'package:dartz/dartz.dart';

class FetchProfile implements Usecase<Stream<Patient>, NoParam> {
  final CommonRepository _commonRepository;
  FetchProfile(this._commonRepository);

  @override
  Future<Either<MedeasyError, Stream<Patient>>> call(NoParam param) async {
    try {
      return Right(_commonRepository.fetchProfile());
    } catch (e) {
      return Left(MedeasyError.fromApiError((e as ApiError).message));
    }
  }
}
