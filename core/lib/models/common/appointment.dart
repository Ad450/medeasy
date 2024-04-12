import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'appointment.freezed.dart';
part 'appointment.g.dart';

@freezed
sealed class Appointment with _$Appointment {
  const factory Appointment({
    @JsonKey(name: "id", required: true) required String id,
    @JsonKey(name: "service_id", required: true) required String serviceId,
    @JsonKey(name: "practitioner_id", required: true) required String practitionerId,
    @JsonKey(name: "day_id", required: true) required String dayId,
    @JsonKey(name: "patient_id", required: true) required String patientId,
    @JsonKey(name: "problem_detail", required: true) required String problemDetail,
    @JsonKey(name: "health_record_file", required: false, includeIfNull: false) String? healthRecordFile,
  }) = _Appointment;

  factory Appointment.fromJson(Map<String, Object?> json) => _$AppointmentFromJson(json);

  factory Appointment.create({
    required String serviceId,
    required String practitionerId,
    required String dayId,
    required String patientId,
    required String problemDetail,
    String? healthRecordFile,
  }) {
    return Appointment(
      id: const Uuid().v4(),
      serviceId: serviceId,
      practitionerId: practitionerId,
      dayId: dayId,
      patientId: patientId,
      problemDetail: problemDetail,
    );
  }
}
