import 'package:core/state/common/common.cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile/app/app.router.dart';
import 'package:mobile/app/app.theme.dart';

class MedeasyPatient extends StatelessWidget {
  const MedeasyPatient({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CommonCubit()..init(),
      child: MaterialApp.router(
        title: 'Medeasy',
        theme: appTheme,
        routerConfig: AppRouter().config(),
      ),
    );
  }
}
