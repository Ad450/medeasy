// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppointmentImpl _$$AppointmentImplFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'service_id',
      'doctor_id',
      'patient_id',
      'date',
      'time',
      'problem_detail'
    ],
  );
  return _$AppointmentImpl(
    serviceId: json['service_id'] as String,
    doctorId: json['doctor_id'] as String,
    patientId: json['patient_id'] as String,
    date: DateTime.parse(json['date'] as String),
    time: json['time'] as String,
    problemDetail: json['problem_detail'] as String,
    healthRecordFile: json['health_record_file'] as String,
  );
}

Map<String, dynamic> _$$AppointmentImplToJson(_$AppointmentImpl instance) =>
    <String, dynamic>{
      'service_id': instance.serviceId,
      'doctor_id': instance.doctorId,
      'patient_id': instance.patientId,
      'date': instance.date.toIso8601String(),
      'time': instance.time,
      'problem_detail': instance.problemDetail,
      'health_record_file': instance.healthRecordFile,
    };
