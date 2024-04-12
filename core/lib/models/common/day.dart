import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'day.freezed.dart';
part 'day.g.dart';

@freezed
sealed class Day with _$Day {
  const factory Day({
    @JsonKey(name: "id", required: true) required String id,
    @JsonKey(name: "practitioner_id", required: true) required String practitionerId,
    @JsonKey(name: "day", required: true) required String day,
    @JsonKey(name: "booked", required: true, defaultValue: false) required bool booked,
  }) = _Day;

  factory Day.fromJson(Map<String, Object?> json) => _$DayFromJson(json);

  factory Day.create({
    required String practitionerId,
    required String day,
    required String startTime,
    required String closingTime,
    required bool booked,
  }) {
    return Day(
      id: const Uuid().v4(),
      practitionerId: practitionerId,
      day: day,
      booked: booked,
    );
  }
}
