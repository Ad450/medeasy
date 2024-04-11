import 'package:freezed_annotation/freezed_annotation.dart';

part 'day.freezed.dart';
part 'day.g.dart';

@freezed
sealed class Day with _$Day {
  const factory Day({
    @JsonKey(name: "day", required: true) required String day,
    @JsonKey(name: "booked", required: true, defaultValue: false)
    required bool booked,
  }) = _Day;

  factory Day.fromJson(Map<String, Object?> json) => _$DayFromJson(json);
}
