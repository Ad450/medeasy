import 'package:core/domain/repository/practitioner.dart';
import 'package:core/models/practitioner/practitioner.dart';

import 'package:core/utils/typedefs.dart';

class FetchPractitionerProfile {
  final PractitionerRepository _practitionerRepository;
  FetchPractitionerProfile(this._practitionerRepository);

  Stream<Practitioner> call() => _practitionerRepository.fetchPractitionerProfile();
}
