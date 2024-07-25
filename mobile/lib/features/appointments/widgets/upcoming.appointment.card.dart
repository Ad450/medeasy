import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile/app/app.asset.dart';
import 'package:mobile/features/appointments/widgets/reschedule.cancel.dart';
import 'package:mobile/features/appointments/widgets/upcoming.appointment.details.dart';

class UpcomingAppointmentCard extends StatelessWidget {
  const UpcomingAppointmentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140.h,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Theme.of(context).colorScheme.onPrimary.withOpacity(0.7),
      ),
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 9),
            child: Image.asset(AppAssets.doctor, height: 124.h, width: 129.w, fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 21),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Dr. Kim Lee',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 2.h),
                Text(
                  'Neurosurgeon',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.white),
                ),
                const UpcomingAppointmentTime(time: "11:00AM"),
                const UpcomingAppointmentCalendar(date: "12 -04-2024"),
                SizedBox(height: 13.h),
                RescheduleOrCancel(onCancel: () {}, onReschedule: () {})
              ],
            ),
          )
        ],
      ),
    );
  }
}
