import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:mobile/features/appointments/widgets/appointment.appbar.dart';
import 'package:mobile/features/appointments/widgets/appointment.drawer.dart';

@RoutePage()
class AppointmentsView extends StatelessWidget {
  const AppointmentsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppointmentDrawer(),
      body: Column(
        children: <Widget>[
          AppointmenAppBar(),
        ],
      ),
    );
  }
}
