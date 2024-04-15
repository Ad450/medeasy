import 'package:core/domain/repository/common.dart';
import 'package:core/domain/repository/patient.dart';
import 'package:core/domain/repository/practitioner.dart';
import 'package:core/domain/usecases/common/fetch.all.appointments.dart';
import 'package:core/domain/usecases/common/fetch.profile.dart';
import 'package:core/domain/usecases/common/signup.with.email.password.dart';
import 'package:core/domain/usecases/common/signup.with.facebook.dart';
import 'package:core/domain/usecases/common/signup.with.google.dart';
import 'package:core/domain/usecases/common/update.profile.dart';
import 'package:core/domain/usecases/patient/schedule.appointment.dart';
import 'package:core/domain/usecases/patient/update.appointment.dart';
import 'package:core/storage/firestore/cloud.dart';
import 'package:core/storage/firestore/firestore.storage.dart';
import 'package:core/storage/local/local.storage.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton<FirestoreStorage>(() => FirestoreStorage());
  locator.registerLazySingleton<CloudFirestore>(() => CloudFirestore());
  locator.registerLazySingleton<LocalStorage>(() => LocalStorage());
  locator.registerLazySingleton<CommonRepository>(
    () => CommonRepositoryImpl(
      locator.get<FirestoreStorage>(),
      locator.get<LocalStorage>(),
      locator.get<CloudFirestore>(),
    ),
  );

  locator.registerLazySingleton<PatientRepository>(
    () => PatientRepositoryImpl(locator.get<FirestoreStorage>()),
  );
  locator.registerLazySingleton<PractitionerRepository>(
    () => PractitionerRepositoryImpl(locator.get<FirestoreStorage>()),
  );
  locator.registerLazySingleton<FetchAllAppointments>(
    () => FetchAllAppointments(locator.get<CommonRepository>()),
  );
  locator.registerLazySingleton<SignupWithEmailAndPassword>(
    () => SignupWithEmailAndPassword(locator.get<CommonRepository>()),
  );
  locator.registerLazySingleton<SignupWithFacebook>(
    () => SignupWithFacebook(locator.get<CommonRepository>()),
  );
  locator.registerLazySingleton<SignupWithFacebook>(
    () => SignupWithFacebook(locator.get<CommonRepository>()),
  );
  locator.registerLazySingleton<SignupWithGoogle>(
    () => SignupWithGoogle(locator.get<CommonRepository>()),
  );
  locator.registerLazySingleton<UpdateProfile>(
    () => UpdateProfile(locator.get<CommonRepository>()),
  );

  locator.registerLazySingleton<FetchProfile>(
    () => FetchProfile(locator.get<CommonRepository>()),
  );

  locator.registerLazySingleton<ScheduleAppointment>(
    () => ScheduleAppointment(locator.get<PatientRepository>()),
  );
  locator.registerLazySingleton<UpdateAppointment>(
    () => UpdateAppointment(locator.get<PatientRepository>()),
  );
}
