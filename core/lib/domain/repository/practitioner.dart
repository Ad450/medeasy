import 'package:core/models/common/day.dart';
import 'package:core/models/practitioner/practitioner.dart';
import 'package:core/storage/firestore/firestore.storage.dart';
import 'package:core/storage/local/local.storage.dart';
import 'package:core/utils/errors.dart';
import 'package:core/utils/typedefs.dart';

sealed class PractitionerRepository {
  Future<VoidType> changeAvailability(Day day);
  Stream<Practitioner> fetchPractitionerProfile();
}

class PractitionerRepositoryImpl implements PractitionerRepository {
  final FirestoreStorage _firestoreStorage;
  final LocalStorage _localStorage;

  PractitionerRepositoryImpl(this._firestoreStorage, this._localStorage);

  @override
  Future<VoidType> changeAvailability(Day day) async {
    try {
      final storedDay = await _firestoreStorage.getByIdFuture(id: day.id, collection: Collection.day);
      final currentStatus = Day.fromJson(storedDay.data() as Map<String, Object?>).booked;

      await _firestoreStorage.update(
        id: day.id,
        collection: Collection.day,
        data: day.copyWith(booked: !currentStatus),
      );
      return const VoidType();
    } catch (e) {
      throw ApiError(e.toString(), source: "changeAvailability");
    }
  }

  @override
  Stream<Practitioner> fetchPractitionerProfile() {
    try {
      final id = _localStorage.getString(LocalKeys.id.name);
      var snapshot = _firestoreStorage.getByKeyValueStream(key: "id", value: id, collection: Collection.patients);
      return snapshot.map(
        (e) => e.docs.map((doc) => Practitioner.fromJson(doc.data() as Map<String, Object?>)).toList().first,
      );
    } catch (e) {
      throw ApiError(e.toString(), source: "fetchPractitionerrofile");
    }
  }
}
