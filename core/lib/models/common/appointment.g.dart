// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppointmentImpl _$$AppointmentImplFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'id',
      'service_id',
      'practitioner_id',
      'day_id',
      'patient_id',
      'start_time',
      'closing_time',
      'problem_detail'
    ],
  );
  return _$AppointmentImpl(
    id: json['id'] as String,
    serviceId: json['service_id'] as String,
    practitionerId: json['practitioner_id'] as String,
    dayId: json['day_id'] as String,
    patientId: json['patient_id'] as String,
    startTime: json['start_time'] as String,
    closingTime: json['closing_time'] as String,
    problemDetail: json['problem_detail'] as String,
    healthRecordFile: json['health_record_file'] as String?,
  );
}

Map<String, dynamic> _$$AppointmentImplToJson(_$AppointmentImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'service_id': instance.serviceId,
    'practitioner_id': instance.practitionerId,
    'day_id': instance.dayId,
    'patient_id': instance.patientId,
    'start_time': instance.startTime,
    'closing_time': instance.closingTime,
    'problem_detail': instance.problemDetail,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('health_record_file', instance.healthRecordFile);
  return val;
}
