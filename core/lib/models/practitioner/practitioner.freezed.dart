// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'practitioner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Practitioner _$PractitionerFromJson(Map<String, dynamic> json) {
  return _Practitioner.fromJson(json);
}

/// @nodoc
mixin _$Practitioner {
  @JsonKey(name: "first_name", required: true)
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: "lastname_name", required: true)
  String get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: "age", required: true)
  int get age => throw _privateConstructorUsedError;
  @JsonKey(name: "profile_picture", required: true)
  String get profilePicture => throw _privateConstructorUsedError;
  @JsonKey(name: "kyc_status", required: true)
  bool get kycStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "specialty", required: true)
  String get specialty => throw _privateConstructorUsedError;
  @JsonKey(name: "bio", required: true)
  String get bio => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PractitionerCopyWith<Practitioner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PractitionerCopyWith<$Res> {
  factory $PractitionerCopyWith(
          Practitioner value, $Res Function(Practitioner) then) =
      _$PractitionerCopyWithImpl<$Res, Practitioner>;
  @useResult
  $Res call(
      {@JsonKey(name: "first_name", required: true) String firstName,
      @JsonKey(name: "lastname_name", required: true) String lastName,
      @JsonKey(name: "age", required: true) int age,
      @JsonKey(name: "profile_picture", required: true) String profilePicture,
      @JsonKey(name: "kyc_status", required: true) bool kycStatus,
      @JsonKey(name: "specialty", required: true) String specialty,
      @JsonKey(name: "bio", required: true) String bio});
}

/// @nodoc
class _$PractitionerCopyWithImpl<$Res, $Val extends Practitioner>
    implements $PractitionerCopyWith<$Res> {
  _$PractitionerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? age = null,
    Object? profilePicture = null,
    Object? kycStatus = null,
    Object? specialty = null,
    Object? bio = null,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      profilePicture: null == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String,
      kycStatus: null == kycStatus
          ? _value.kycStatus
          : kycStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      specialty: null == specialty
          ? _value.specialty
          : specialty // ignore: cast_nullable_to_non_nullable
              as String,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PractitionerImplCopyWith<$Res>
    implements $PractitionerCopyWith<$Res> {
  factory _$$PractitionerImplCopyWith(
          _$PractitionerImpl value, $Res Function(_$PractitionerImpl) then) =
      __$$PractitionerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "first_name", required: true) String firstName,
      @JsonKey(name: "lastname_name", required: true) String lastName,
      @JsonKey(name: "age", required: true) int age,
      @JsonKey(name: "profile_picture", required: true) String profilePicture,
      @JsonKey(name: "kyc_status", required: true) bool kycStatus,
      @JsonKey(name: "specialty", required: true) String specialty,
      @JsonKey(name: "bio", required: true) String bio});
}

/// @nodoc
class __$$PractitionerImplCopyWithImpl<$Res>
    extends _$PractitionerCopyWithImpl<$Res, _$PractitionerImpl>
    implements _$$PractitionerImplCopyWith<$Res> {
  __$$PractitionerImplCopyWithImpl(
      _$PractitionerImpl _value, $Res Function(_$PractitionerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? age = null,
    Object? profilePicture = null,
    Object? kycStatus = null,
    Object? specialty = null,
    Object? bio = null,
  }) {
    return _then(_$PractitionerImpl(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      profilePicture: null == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String,
      kycStatus: null == kycStatus
          ? _value.kycStatus
          : kycStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      specialty: null == specialty
          ? _value.specialty
          : specialty // ignore: cast_nullable_to_non_nullable
              as String,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PractitionerImpl implements _Practitioner {
  const _$PractitionerImpl(
      {@JsonKey(name: "first_name", required: true) required this.firstName,
      @JsonKey(name: "lastname_name", required: true) required this.lastName,
      @JsonKey(name: "age", required: true) required this.age,
      @JsonKey(name: "profile_picture", required: true)
      required this.profilePicture,
      @JsonKey(name: "kyc_status", required: true) required this.kycStatus,
      @JsonKey(name: "specialty", required: true) required this.specialty,
      @JsonKey(name: "bio", required: true) required this.bio});

  factory _$PractitionerImpl.fromJson(Map<String, dynamic> json) =>
      _$$PractitionerImplFromJson(json);

  @override
  @JsonKey(name: "first_name", required: true)
  final String firstName;
  @override
  @JsonKey(name: "lastname_name", required: true)
  final String lastName;
  @override
  @JsonKey(name: "age", required: true)
  final int age;
  @override
  @JsonKey(name: "profile_picture", required: true)
  final String profilePicture;
  @override
  @JsonKey(name: "kyc_status", required: true)
  final bool kycStatus;
  @override
  @JsonKey(name: "specialty", required: true)
  final String specialty;
  @override
  @JsonKey(name: "bio", required: true)
  final String bio;

  @override
  String toString() {
    return 'Practitioner(firstName: $firstName, lastName: $lastName, age: $age, profilePicture: $profilePicture, kycStatus: $kycStatus, specialty: $specialty, bio: $bio)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PractitionerImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture) &&
            (identical(other.kycStatus, kycStatus) ||
                other.kycStatus == kycStatus) &&
            (identical(other.specialty, specialty) ||
                other.specialty == specialty) &&
            (identical(other.bio, bio) || other.bio == bio));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, age,
      profilePicture, kycStatus, specialty, bio);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PractitionerImplCopyWith<_$PractitionerImpl> get copyWith =>
      __$$PractitionerImplCopyWithImpl<_$PractitionerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PractitionerImplToJson(
      this,
    );
  }
}

abstract class _Practitioner implements Practitioner {
  const factory _Practitioner(
          {@JsonKey(name: "first_name", required: true)
          required final String firstName,
          @JsonKey(name: "lastname_name", required: true)
          required final String lastName,
          @JsonKey(name: "age", required: true) required final int age,
          @JsonKey(name: "profile_picture", required: true)
          required final String profilePicture,
          @JsonKey(name: "kyc_status", required: true)
          required final bool kycStatus,
          @JsonKey(name: "specialty", required: true)
          required final String specialty,
          @JsonKey(name: "bio", required: true) required final String bio}) =
      _$PractitionerImpl;

  factory _Practitioner.fromJson(Map<String, dynamic> json) =
      _$PractitionerImpl.fromJson;

  @override
  @JsonKey(name: "first_name", required: true)
  String get firstName;
  @override
  @JsonKey(name: "lastname_name", required: true)
  String get lastName;
  @override
  @JsonKey(name: "age", required: true)
  int get age;
  @override
  @JsonKey(name: "profile_picture", required: true)
  String get profilePicture;
  @override
  @JsonKey(name: "kyc_status", required: true)
  bool get kycStatus;
  @override
  @JsonKey(name: "specialty", required: true)
  String get specialty;
  @override
  @JsonKey(name: "bio", required: true)
  String get bio;
  @override
  @JsonKey(ignore: true)
  _$$PractitionerImplCopyWith<_$PractitionerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
