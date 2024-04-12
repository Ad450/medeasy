import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'practitioner.freezed.dart';
part 'practitioner.g.dart';

@freezed
sealed class Practitioner with _$Practitioner {
  const factory Practitioner({
    @JsonKey(name: "id", required: true) required String id,
    @JsonKey(name: "first_name", required: true) required String firstName,
    @JsonKey(name: "lastname_name", required: true) required String lastName,
    @JsonKey(name: "age", required: true) required int age,
    @JsonKey(name: "profile_picture", required: true) required String profilePicture,
    @JsonKey(name: "kyc_status", required: true) required bool kycStatus,
    @JsonKey(name: "specialty", required: true) required String specialty,
    @JsonKey(name: "bio", required: true) required String bio,
  }) = _Practitioner;

  factory Practitioner.fromJson(Map<String, Object?> json) => _$PractitionerFromJson(json);

  factory Practitioner.create({
    required String firstName,
    required String lastName,
    required int age,
    required String profilePicture,
    required bool kycStatus,
    required String specialty,
    required String bio,
  }) {
    return Practitioner(
      id: const Uuid().v4(),
      firstName: firstName,
      lastName: lastName,
      age: age,
      profilePicture: profilePicture,
      kycStatus: kycStatus,
      specialty: specialty,
      bio: bio,
    );
  }
}
