import 'package:freezed_annotation/freezed_annotation.dart';

part 'appointment.freezed.dart';
part 'appointment.g.dart';

@freezed
sealed class Appointment with _$Appointment {
  const factory Appointment({
    @JsonKey(name: "service_id", required: true) required String serviceId,
    @JsonKey(name: "doctor_id", required: true) required String doctorId,
    @JsonKey(name: "patient_id", required: true) required String patientId,
    @JsonKey(name: "date", required: true) required DateTime date,
    @JsonKey(name: "time", required: true) required String time,
    @JsonKey(name: "problem_detail", required: true) required String problemDetail,
    @JsonKey(name: "health_record_file", required: false, includeIfNull: false) required String healthRecordFile,
  }) = _Appointment;

  factory Appointment.fromJson(Map<String, Object?> json) => _$AppointmentFromJson(json);
}
