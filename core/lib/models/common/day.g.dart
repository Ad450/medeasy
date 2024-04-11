// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DayImpl _$$DayImplFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['day', 'booked'],
  );
  return _$DayImpl(
    day: json['day'] as String,
    booked: json['booked'] as bool? ?? false,
  );
}

Map<String, dynamic> _$$DayImplToJson(_$DayImpl instance) => <String, dynamic>{
      'day': instance.day,
      'booked': instance.booked,
    };
