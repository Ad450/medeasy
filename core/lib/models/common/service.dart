import 'package:freezed_annotation/freezed_annotation.dart';

part 'service.freezed.dart';
part 'service.g.dart';

@freezed
sealed class Service with _$Service {
  const factory Service({
    @JsonKey(name: "service_name", required: true) required String name,
    @JsonKey(name: "picture", required: true) required String picture,
    required String profilePicture,
  }) = _Service;

  factory Service.fromJson(Map<String, Object?> json) =>
      _$ServiceFromJson(json);
}
