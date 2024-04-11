import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient.freezed.dart';
part 'patient.g.dart';

@freezed
sealed class Patient with _$Patient {
  const factory Patient({
    @JsonKey(name: "first_name", required: true) required String firstName,
    @JsonKey(name: "lastname_name", required: true) required String lastName,
    @JsonKey(name: "age", required: true) required int age,
    @JsonKey(name: "profile_picture", required: true)
    required String profilePicture,
  }) = _Patient;

  factory Patient.fromJson(Map<String, Object?> json) =>
      _$PatientFromJson(json);
}
