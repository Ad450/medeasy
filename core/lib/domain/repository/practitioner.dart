import 'package:core/utils/errors.dart';
import 'package:core/utils/typedefs.dart';
import 'package:dartz/dartz.dart';

abstract class PractitionerRepository {
  Future<Either<MedeasyError, VoidType>> updateProfile(
    UpdateProfileParams params,
  );

  //TODO: change [day] to the Day object that will be used with the practitioner's Calendar
  Future<Either<MedeasyError, VoidType>> changeAvailability(
    String day,
  );
}
