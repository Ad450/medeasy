import 'package:core/utils/errors.dart';
import 'package:core/utils/typedefs.dart';
import 'package:dartz/dartz.dart';

abstract class PatientRepository {
  Future<Either<MedeasyError, VoidType>> updateProfile(
    UpdateProfileParams params,
  );
  Future<Either<MedeasyError, VoidType>> scheduleAppointment();
  Future<Either<MedeasyError, VoidType>> updateAppointment(
    UpdateAppointment params,
  );
}
