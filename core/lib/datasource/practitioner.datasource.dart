import 'package:core/models/common/day.dart';
import 'package:core/utils/typedefs.dart';

sealed class PractitionerDatasource {
  Future<VoidType> changeAvailability(Day day);
}

class PractitionerDatasourceImpl implements PractitionerDatasource {
  @override
  Future<VoidType> changeAvailability(Day day) {
    // TODO: implement changeAvailability
    throw UnimplementedError();
  }
}
