import 'package:auto_route/auto_route.dart';
import 'package:mobile/features/appointments/appointmet.view.dart';
import 'package:mobile/features/auth/signup.dart';
import 'package:mobile/features/profile/create.profile.view.dart';
import 'package:mobile/features/startup/startup.dart';

part 'app.router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: StartupRoute.page, initial: true),
        AutoRoute(page: SignupRoute.page),
        AutoRoute(page: CreateProfileRoute.page),
        AutoRoute(page: AppointmentsRoute.page),
      ];
}
