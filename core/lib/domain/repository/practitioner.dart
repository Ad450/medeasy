import 'package:core/models/common/day.dart';
import 'package:core/utils/typedefs.dart';

abstract class PractitionerRepository {
  //TODO: change [day] to the Day object that will be used with the practitioner's Calendar
  Future<VoidType> changeAvailability(Day day);
}

//
// firebase_core: ^2.9.0
// firebase_auth: ^4.4.0
// firebase_storage: ^11.1.0
// cloud_firestore: ^4.5.0
