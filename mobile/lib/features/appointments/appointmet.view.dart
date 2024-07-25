import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile/features/appointments/widgets/appointment.appbar.dart';
import 'package:mobile/features/appointments/widgets/appointment.drawer.dart';
import 'package:mobile/features/appointments/widgets/schedule.appointment.card.dart';
import 'package:mobile/features/appointments/widgets/upcoming.appointment.card.dart';
import 'package:mobile/features/services/service_view.dart';

class AppointmentsView extends StatelessWidget {
  const AppointmentsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppointmentDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const AppointmenAppBar(),
          SizedBox(height: 45.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 23.w),
            child: Text(
              'Upcoming Appointments',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
          Expanded(
              child: ListView(
            children: <Widget>[
              ...const [UpcomingAppointmentCard(), UpcomingAppointmentCard()],
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 23.w),
                child: Text(
                  'Upcoming Appointments',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              const ServicesTray(),
              ...const [ScheduleAppointmentCard(), ScheduleAppointmentCard()],
            ],
          ))
        ],
      ),
    );
  }
}
