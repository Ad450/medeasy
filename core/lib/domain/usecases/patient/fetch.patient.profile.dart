import 'package:core/domain/repository/common.dart';
import 'package:core/domain/repository/patient.dart';
import 'package:core/models/patient/patient.dart';

import 'package:core/utils/typedefs.dart';

class FetchPatientProfile {
  final PatientRepository _patientRepository;
  FetchPatientProfile(this._patientRepository);

  Stream<Patient> call() => _patientRepository.fetchProfile();
}
