import 'package:core/domain/repository/common.dart';
import 'package:core/models/common/appointment.dart';
import 'package:core/utils/typedefs.dart';

class FetchAllAppointments {
  final CommonRepository _commonRepository;
  FetchAllAppointments(this._commonRepository);

  Stream<List<Appointment>> call(UserType param) => _commonRepository.fetchAllAppointments(param);
}
