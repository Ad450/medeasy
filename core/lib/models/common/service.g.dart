// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServiceImpl _$$ServiceImplFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['id', 'service_name', 'picture'],
  );
  return _$ServiceImpl(
    id: json['id'] as String,
    name: json['service_name'] as String,
    picture: json['picture'] as String,
    profilePicture: json['profilePicture'] as String,
  );
}

Map<String, dynamic> _$$ServiceImplToJson(_$ServiceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'service_name': instance.name,
      'picture': instance.picture,
      'profilePicture': instance.profilePicture,
    };
