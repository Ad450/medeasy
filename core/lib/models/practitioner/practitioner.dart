import 'package:freezed_annotation/freezed_annotation.dart';

part 'practitioner.freezed.dart';
part 'practitioner.g.dart';

@freezed
sealed class Practitioner with _$Practitioner {
  const factory Practitioner({
    @JsonKey(name: "first_name", required: true) required String firstName,
    @JsonKey(name: "lastname_name", required: true) required String lastName,
    @JsonKey(name: "age", required: true) required int age,
    @JsonKey(name: "profile_picture", required: true)
    required String profilePicture,
    @JsonKey(name: "kyc_status", required: true) required bool kycStatus,
    @JsonKey(name: "specialty", required: true) required String specialty,
    @JsonKey(name: "bio", required: true) required String bio,
  }) = _Practitioner;

  factory Practitioner.fromJson(Map<String, Object?> json) =>
      _$PractitionerFromJson(json);
}
