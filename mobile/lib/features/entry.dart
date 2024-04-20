import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile/app/app.router.dart';
import 'package:mobile/app/app.theme.dart';

class MedeasyPatient extends StatelessWidget {
  const MedeasyPatient({super.key});

  @override
  Widget build(BuildContext context) {
    //   BlocProvider(
    //   create: (context) => CommonCubit()..init(),
    //   child: ScreenUtilInit(
    //     designSize: const Size(367, 812),
    //     builder: (_, child) => MaterialApp.router(
    //       title: 'Medeasy',
    //       theme: appTheme,
    //       routerConfig: AppRouter().config(),
    //     ),
    //   ),
    // );
    return ScreenUtilInit(
      designSize: const Size(367, 812),
      builder: (_, child) => MaterialApp.router(
        title: 'Medeasy',
        theme: appTheme,
        routerConfig: AppRouter().config(),
      ),
    );
  }
}
