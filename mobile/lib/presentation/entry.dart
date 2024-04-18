import 'package:flutter/material.dart';
import 'package:mobile/app/app.theme.dart';

class MedeasyPatient extends StatelessWidget {
  const MedeasyPatient({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medeasy',
      theme: appTheme,
      home: const Scaffold(),
    );
  }
}
