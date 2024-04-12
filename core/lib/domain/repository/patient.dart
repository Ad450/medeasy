import 'package:core/models/common/appointment.dart';
import 'package:core/storage/firestore/firestore.storage.dart';
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
}

class PatientRepositoryImpl implements PatientRepository {
  final FirestoreStorage _firestoreStorage;

  PatientRepositoryImpl(this._firestoreStorage);

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

      if (dayId == null) {
        await _firestoreStorage.update(
          id: appointmentId,
          collection: Collection.appointments,
          data: {"problem_detail": problemDetail, "start_time": startTime, "closing_time": closingTime},
        );
      } else {
        await _firestoreStorage.add(
          collection: Collection.appointments,
          data: Appointment.create(
            serviceId: oldAppointment.serviceId,
            practitionerId: oldAppointment.practitionerId,
            dayId: dayId,
            patientId: oldAppointment.patientId,
            problemDetail: problemDetail ?? oldAppointment.problemDetail,
            closingTime: closingTime ?? oldAppointment.closingTime,
            startTime: startTime ?? oldAppointment.startTime,
          ),
        );
        await _firestoreStorage.delete(id: oldAppointment.id, collection: Collection.appointments);
      }
      return const VoidType();
    } catch (e) {
      throw ApiError(e.toString(), stackTrace: "updateAppointment");
    }
  }
}
