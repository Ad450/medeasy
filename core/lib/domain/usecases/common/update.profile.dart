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

class UpdateProfileParams {
  final String? firstName;
  final String? lastName;
  final String? age;
  final String? profilePicture;
  final bool isPractitioner;
  final String? specialty;

  UpdateProfileParams({
    this.firstName,
    this.lastName,
    this.age,
    this.profilePicture,
    this.isPractitioner = false,
    this.specialty,
  }) : assert(specialty != null && isPractitioner);

  Map<String, Object?> toJson() {
    return isPractitioner
        ? <String, Object?>{
            "last_name": lastName,
            "age": age,
            "profile_picture": profilePicture,
            "specialty": specialty,
          }
        : <String, Object?>{
            "last_name": lastName,
            "age": age,
            "profile_picture": profilePicture,
          };
  }
}
