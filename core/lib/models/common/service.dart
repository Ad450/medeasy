import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'service.freezed.dart';
part 'service.g.dart';

@freezed
sealed class Service with _$Service {
  const factory Service({
    @JsonKey(name: "id", required: true) required String id,
    @JsonKey(name: "service_name", required: true) required String name,
    @JsonKey(name: "picture", required: true) required String picture,
    required String profilePicture,
  }) = _Service;

  factory Service.fromJson(Map<String, Object?> json) => _$ServiceFromJson(json);

  factory Service.create({
    required String name,
    required String picture,
    required String profilePicture,
  }) {
    return Service(
      id: const Uuid().v4(),
      name: name,
      picture: name,
      profilePicture: profilePicture,
    );
  }
}
