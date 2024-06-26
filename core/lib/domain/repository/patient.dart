import 'package:core/models/common/appointment.dart';
import 'package:core/models/common/day.dart';
import 'package:core/models/patient/patient.dart';
import 'package:core/storage/firestore/firestore.storage.dart';
import 'package:core/storage/local/local.storage.dart';
import 'package:core/utils/errors.dart';
import 'package:core/utils/typedefs.dart';

sealed class PatientRepository {
  Future<VoidType> scheduleAppointment({
    required String dayId,
    required String serviceId,
    required String patientId,
    required String? healthRecordFile,
    required String practitionerId,
    required String problemDetail,
    required String startTime,
    required String closingTime,
  });
  Future<VoidType> updateAppointment({
    String? startTime,
    String? closingTime,
    String? dayId,
    String? problemDetail,
    required String appointmentId,
  });
  Stream<Patient> fetchProfile();
}

class PatientRepositoryImpl implements PatientRepository {
  final FirestoreStorage _firestoreStorage;
  final LocalStorage _localStorage;

  PatientRepositoryImpl(this._firestoreStorage, this._localStorage);

  @override
  Stream<Patient> fetchProfile() {
    try {
      final id = _localStorage.getString(LocalKeys.id.name);
      var snapshot = _firestoreStorage.getByKeyValueStream(key: "id", value: id, collection: Collection.patients);
      return snapshot.map(
        (e) => e.docs.map((doc) => Patient.fromJson(doc.data() as Map<String, Object?>)).toList().first,
      );
    } catch (e) {
      throw ApiError(e.toString(), source: "fetchPatientProfile");
    }
  }

  @override
  Future<VoidType> scheduleAppointment({
    required String dayId,
    required String serviceId,
    required String patientId,
    required String? healthRecordFile,
    required String practitionerId,
    required String problemDetail,
    required String startTime,
    required String closingTime,
  }) async {
    try {
      final storedDay = await _firestoreStorage.getByIdFuture(id: dayId, collection: Collection.day);
      final isBooked = Day.fromJson(storedDay.data() as Map<String, Object?>).booked;
      if (!isBooked) {
        await _firestoreStorage.add(
          collection: Collection.appointments,
          data: Appointment.create(
            serviceId: serviceId,
            practitionerId: practitionerId,
            dayId: dayId,
            patientId: patientId,
            problemDetail: problemDetail,
            closingTime: closingTime,
            startTime: startTime,
          ),
        );
      } else {
        throw ApiError('Your chosen Day is fully booked, try a different day');
      }
      return const VoidType();
    } catch (e) {
      throw ApiError(e.toString(), stackTrace: "scheduleAppointment");
    }
  }

  @override
  Future<VoidType> updateAppointment({
    String? startTime,
    String? closingTime,
    String? dayId,
    String? problemDetail,
    required String appointmentId,
  }) async {
    try {
      final doc = await _firestoreStorage.getByIdFuture(id: appointmentId, collection: Collection.appointments);
      var oldAppointment = Appointment.fromJson(doc.data() as Map<String, Object?>);

      await _firestoreStorage.update(
        id: appointmentId,
        collection: Collection.appointments,
        data: {
          "problem_detail": problemDetail,
          "start_time": startTime,
          "closing_time": closingTime,
          "day_id": dayId ?? oldAppointment.dayId,
        },
      );

      return const VoidType();
    } catch (e) {
      throw ApiError(e.toString(), stackTrace: "updateAppointment");
    }
  }
}
