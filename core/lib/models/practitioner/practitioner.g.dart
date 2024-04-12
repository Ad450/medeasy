// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'practitioner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PractitionerImpl _$$PractitionerImplFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'id',
      'first_name',
      'lastname_name',
      'age',
      'profile_picture',
      'kyc_status',
      'specialty',
      'bio'
    ],
  );
  return _$PractitionerImpl(
    id: json['id'] as String,
    firstName: json['first_name'] as String,
    lastName: json['lastname_name'] as String,
    age: json['age'] as int,
    profilePicture: json['profile_picture'] as String,
    kycStatus: json['kyc_status'] as bool,
    specialty: json['specialty'] as String,
    bio: json['bio'] as String,
  );
}

Map<String, dynamic> _$$PractitionerImplToJson(_$PractitionerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'lastname_name': instance.lastName,
      'age': instance.age,
      'profile_picture': instance.profilePicture,
      'kyc_status': instance.kycStatus,
      'specialty': instance.specialty,
      'bio': instance.bio,
    };
