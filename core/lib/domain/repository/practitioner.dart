import 'package:core/models/common/day.dart';
import 'package:core/utils/typedefs.dart';

abstract class PractitionerRepository {
  //TODO: change [day] to the Day object that will be used with the practitioner's Calendar
  Future<VoidType> changeAvailability(Day day);
}
