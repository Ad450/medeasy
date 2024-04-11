// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Appointment _$AppointmentFromJson(Map<String, dynamic> json) {
  return _Appointment.fromJson(json);
}

/// @nodoc
mixin _$Appointment {
  @JsonKey(name: "service_id", required: true)
  String get serviceId => throw _privateConstructorUsedError;
  @JsonKey(name: "doctor_id", required: true)
  String get doctorId => throw _privateConstructorUsedError;
  @JsonKey(name: "patient_id", required: true)
  String get patientId => throw _privateConstructorUsedError;
  @JsonKey(name: "date", required: true)
  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(name: "time", required: true)
  String get time => throw _privateConstructorUsedError;
  @JsonKey(name: "problem_detail", required: true)
  String get problemDetail => throw _privateConstructorUsedError;
  @JsonKey(name: "health_record_file", required: false, includeIfNull: false)
  String get healthRecordFile => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppointmentCopyWith<Appointment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentCopyWith<$Res> {
  factory $AppointmentCopyWith(
          Appointment value, $Res Function(Appointment) then) =
      _$AppointmentCopyWithImpl<$Res, Appointment>;
  @useResult
  $Res call(
      {@JsonKey(name: "service_id", required: true) String serviceId,
      @JsonKey(name: "doctor_id", required: true) String doctorId,
      @JsonKey(name: "patient_id", required: true) String patientId,
      @JsonKey(name: "date", required: true) DateTime date,
      @JsonKey(name: "time", required: true) String time,
      @JsonKey(name: "problem_detail", required: true) String problemDetail,
      @JsonKey(
          name: "health_record_file", required: false, includeIfNull: false)
      String healthRecordFile});
}

/// @nodoc
class _$AppointmentCopyWithImpl<$Res, $Val extends Appointment>
    implements $AppointmentCopyWith<$Res> {
  _$AppointmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceId = null,
    Object? doctorId = null,
    Object? patientId = null,
    Object? date = null,
    Object? time = null,
    Object? problemDetail = null,
    Object? healthRecordFile = null,
  }) {
    return _then(_value.copyWith(
      serviceId: null == serviceId
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as String,
      doctorId: null == doctorId
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as String,
      patientId: null == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      problemDetail: null == problemDetail
          ? _value.problemDetail
          : problemDetail // ignore: cast_nullable_to_non_nullable
              as String,
      healthRecordFile: null == healthRecordFile
          ? _value.healthRecordFile
          : healthRecordFile // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppointmentImplCopyWith<$Res>
    implements $AppointmentCopyWith<$Res> {
  factory _$$AppointmentImplCopyWith(
          _$AppointmentImpl value, $Res Function(_$AppointmentImpl) then) =
      __$$AppointmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "service_id", required: true) String serviceId,
      @JsonKey(name: "doctor_id", required: true) String doctorId,
      @JsonKey(name: "patient_id", required: true) String patientId,
      @JsonKey(name: "date", required: true) DateTime date,
      @JsonKey(name: "time", required: true) String time,
      @JsonKey(name: "problem_detail", required: true) String problemDetail,
      @JsonKey(
          name: "health_record_file", required: false, includeIfNull: false)
      String healthRecordFile});
}

/// @nodoc
class __$$AppointmentImplCopyWithImpl<$Res>
    extends _$AppointmentCopyWithImpl<$Res, _$AppointmentImpl>
    implements _$$AppointmentImplCopyWith<$Res> {
  __$$AppointmentImplCopyWithImpl(
      _$AppointmentImpl _value, $Res Function(_$AppointmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceId = null,
    Object? doctorId = null,
    Object? patientId = null,
    Object? date = null,
    Object? time = null,
    Object? problemDetail = null,
    Object? healthRecordFile = null,
  }) {
    return _then(_$AppointmentImpl(
      serviceId: null == serviceId
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as String,
      doctorId: null == doctorId
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as String,
      patientId: null == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      problemDetail: null == problemDetail
          ? _value.problemDetail
          : problemDetail // ignore: cast_nullable_to_non_nullable
              as String,
      healthRecordFile: null == healthRecordFile
          ? _value.healthRecordFile
          : healthRecordFile // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppointmentImpl implements _Appointment {
  const _$AppointmentImpl(
      {@JsonKey(name: "service_id", required: true) required this.serviceId,
      @JsonKey(name: "doctor_id", required: true) required this.doctorId,
      @JsonKey(name: "patient_id", required: true) required this.patientId,
      @JsonKey(name: "date", required: true) required this.date,
      @JsonKey(name: "time", required: true) required this.time,
      @JsonKey(name: "problem_detail", required: true)
      required this.problemDetail,
      @JsonKey(
          name: "health_record_file", required: false, includeIfNull: false)
      required this.healthRecordFile});

  factory _$AppointmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppointmentImplFromJson(json);

  @override
  @JsonKey(name: "service_id", required: true)
  final String serviceId;
  @override
  @JsonKey(name: "doctor_id", required: true)
  final String doctorId;
  @override
  @JsonKey(name: "patient_id", required: true)
  final String patientId;
  @override
  @JsonKey(name: "date", required: true)
  final DateTime date;
  @override
  @JsonKey(name: "time", required: true)
  final String time;
  @override
  @JsonKey(name: "problem_detail", required: true)
  final String problemDetail;
  @override
  @JsonKey(name: "health_record_file", required: false, includeIfNull: false)
  final String healthRecordFile;

  @override
  String toString() {
    return 'Appointment(serviceId: $serviceId, doctorId: $doctorId, patientId: $patientId, date: $date, time: $time, problemDetail: $problemDetail, healthRecordFile: $healthRecordFile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentImpl &&
            (identical(other.serviceId, serviceId) ||
                other.serviceId == serviceId) &&
            (identical(other.doctorId, doctorId) ||
                other.doctorId == doctorId) &&
            (identical(other.patientId, patientId) ||
                other.patientId == patientId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.problemDetail, problemDetail) ||
                other.problemDetail == problemDetail) &&
            (identical(other.healthRecordFile, healthRecordFile) ||
                other.healthRecordFile == healthRecordFile));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, serviceId, doctorId, patientId,
      date, time, problemDetail, healthRecordFile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppointmentImplCopyWith<_$AppointmentImpl> get copyWith =>
      __$$AppointmentImplCopyWithImpl<_$AppointmentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppointmentImplToJson(
      this,
    );
  }
}

abstract class _Appointment implements Appointment {
  const factory _Appointment(
      {@JsonKey(name: "service_id", required: true)
      required final String serviceId,
      @JsonKey(name: "doctor_id", required: true)
      required final String doctorId,
      @JsonKey(name: "patient_id", required: true)
      required final String patientId,
      @JsonKey(name: "date", required: true) required final DateTime date,
      @JsonKey(name: "time", required: true) required final String time,
      @JsonKey(name: "problem_detail", required: true)
      required final String problemDetail,
      @JsonKey(
          name: "health_record_file", required: false, includeIfNull: false)
      required final String healthRecordFile}) = _$AppointmentImpl;

  factory _Appointment.fromJson(Map<String, dynamic> json) =
      _$AppointmentImpl.fromJson;

  @override
  @JsonKey(name: "service_id", required: true)
  String get serviceId;
  @override
  @JsonKey(name: "doctor_id", required: true)
  String get doctorId;
  @override
  @JsonKey(name: "patient_id", required: true)
  String get patientId;
  @override
  @JsonKey(name: "date", required: true)
  DateTime get date;
  @override
  @JsonKey(name: "time", required: true)
  String get time;
  @override
  @JsonKey(name: "problem_detail", required: true)
  String get problemDetail;
  @override
  @JsonKey(name: "health_record_file", required: false, includeIfNull: false)
  String get healthRecordFile;
  @override
  @JsonKey(ignore: true)
  _$$AppointmentImplCopyWith<_$AppointmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
