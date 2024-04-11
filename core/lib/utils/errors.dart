import 'dart:developer';

class MedeasyError {
  final String message;
  MedeasyError._(this.message);

  factory MedeasyError.fromApiError(String message, {String? source}) {
    if (source != null) {
      log(source);
    }
    return MedeasyError._(message);
  }
}

class ApiError {
  final String message;
  final String? source;
  final Object? stackTrace;

  ApiError(this.message, {this.source, this.stackTrace});
}
