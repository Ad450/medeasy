// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PatientImpl _$$PatientImplFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'first_name',
      'lastname_name',
      'age',
      'profile_picture'
    ],
  );
  return _$PatientImpl(
    firstName: json['first_name'] as String,
    lastName: json['lastname_name'] as String,
    age: json['age'] as int,
    profilePicture: json['profile_picture'] as String,
  );
}

Map<String, dynamic> _$$PatientImplToJson(_$PatientImpl instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'lastname_name': instance.lastName,
      'age': instance.age,
      'profile_picture': instance.profilePicture,
    };
