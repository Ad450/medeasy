// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DayImpl _$$DayImplFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['id', 'practitioner_id', 'day', 'booked'],
  );
  return _$DayImpl(
    id: json['id'] as String,
    practitionerId: json['practitioner_id'] as String,
    day: json['day'] as String,
    booked: json['booked'] as bool? ?? false,
  );
}

Map<String, dynamic> _$$DayImplToJson(_$DayImpl instance) => <String, dynamic>{
      'id': instance.id,
      'practitioner_id': instance.practitionerId,
      'day': instance.day,
      'booked': instance.booked,
    };
