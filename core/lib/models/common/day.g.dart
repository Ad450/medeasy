// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DayImpl _$$DayImplFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'id',
      'practitioner_id',
      'day',
      'start_time',
      'closing_time',
      'booked'
    ],
  );
  return _$DayImpl(
    id: json['id'] as String,
    practitionerId: json['practitioner_id'] as String,
    day: json['day'] as String,
    startTime: json['start_time'] as String,
    closingTime: json['closing_time'] as String,
    booked: json['booked'] as bool? ?? false,
  );
}

Map<String, dynamic> _$$DayImplToJson(_$DayImpl instance) => <String, dynamic>{
      'id': instance.id,
      'practitioner_id': instance.practitionerId,
      'day': instance.day,
      'start_time': instance.startTime,
      'closing_time': instance.closingTime,
      'booked': instance.booked,
    };
