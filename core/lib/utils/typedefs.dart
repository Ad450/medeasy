import 'package:core/core.dart';
import 'package:core/utils/errors.dart';
import 'package:dartz/dartz.dart';

enum UserType { practitioner, patient }

class VoidType {
  const VoidType();
}

class NoParam {
  const NoParam();
}

/// An Interface that must be implemented by all usecases
/// All subclasses will be callable like functions through
/// the implemented [call] method
abstract class Usecase<R, P> {
  Future<Either<MedeasyError, R>> call(P param);
}
