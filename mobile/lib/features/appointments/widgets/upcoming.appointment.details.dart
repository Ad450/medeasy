import 'package:flutter/material.dart';
import 'package:mobile/app/app.asset.dart';

class UpcomingAppointmentTime extends StatelessWidget {
  final String time;
  const UpcomingAppointmentTime({required this.time, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(AppAssets.timer, width: 12, height: 12),
        const SizedBox(width: 4),
        Text(
          time,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontSize: 10, fontWeight: FontWeight.w500, color: Colors.white),
        ),
      ],
    );
  }
}

class UpcomingAppointmentCalendar extends StatelessWidget {
  final String date;
  const UpcomingAppointmentCalendar({required this.date, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(AppAssets.calendar, width: 12, height: 12),
        const SizedBox(width: 4),
        Text(
          date,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontSize: 10, fontWeight: FontWeight.w500, color: Colors.white),
        ),
      ],
    );
  }
}
