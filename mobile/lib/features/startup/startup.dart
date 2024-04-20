import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mobile/features/splash/splash.dart';

@RoutePage()
class StartupView extends StatelessWidget {
  const StartupView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SplashView();
  }
}
