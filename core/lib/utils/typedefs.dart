import 'package:core/core.dart';
import 'package:core/utils/errors.dart';
import 'package:dartz/dartz.dart';

enum FetchAppointmentType { practitioner, patient }

class VoidType {
  const VoidType();
}

class NoParam {
  const NoParam();
}

class UpdateProfileParams {
  final String id;
  final String? firstName;
  final String? lastName;
  final String? age;
  final String? profilePicture;
  final bool isPractitioner;
  final String? specialty;

  UpdateProfileParams({
    required this.id,
    this.firstName,
    this.lastName,
    this.age,
    this.profilePicture,
    this.isPractitioner = false,
    this.specialty,
  }) : assert(specialty != null && isPractitioner);

  Map<String, Object?> toJson(
    final String? firstName,
    String? lastName,
    String? age,
    String? profilePicture,
    bool isPractitioner,
    String? specialty,
  ) {
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

class UpdateAppointmentParams {
  final String? time;
  final DateTime? date;
  final String? problemDetail;

  UpdateAppointmentParams({
    this.time,
    this.date,
    this.problemDetail,
  });
}

/// An Interface that must be implemented by all usecases
/// All subclasses will be callable like functions through
/// the implemented [call] method
abstract class Usecase<R, P> {
  Future<Either<MedeasyError, R>> call(P param);
}
