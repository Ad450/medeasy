import 'package:core/models/common/day.dart';
import 'package:core/storage/firestore/firestore.storage.dart';
import 'package:core/utils/errors.dart';
import 'package:core/utils/typedefs.dart';

sealed class PractitionerRepository {
  Future<VoidType> changeAvailability(Day day);
}

class PractitionerRepositoryImpl implements PractitionerRepository {
  final FirestoreStorage _firestoreStorage;

  PractitionerRepositoryImpl(this._firestoreStorage);

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
}
