import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile/app/app.asset.dart';
import 'package:mobile/features/appointments/widgets/rating.dart';

class ScheduleAppointmentCard extends StatelessWidget {
  const ScheduleAppointmentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.h,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color(0xffD9D9D9)),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 9),
                child: Image.asset(AppAssets.doctor,
                    height: 81.h, width: 80.w, fit: BoxFit.cover),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 21),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Dr. Kim Lee',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 2.h),
                    Text(
                      'Neurosurgeon',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xffB4B1B1)),
                    ),
                    const Row(children: [Ratings(rating: 2)]),
                    Text(
                      '8:00 AM - 5: 00 PM',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xffB4B1B1)),
                    ),
                    // const UpcomingAppointmentTime(time: "11:00AM"),
                    // const UpcomingAppointmentCalendar(date: "12 -04-2024"),
                    // SizedBox(height: 13.h),
                    // RescheduleOrCancel(onCancel: () {}, onReschedule: () {})
                  ],
                ),
              )
            ],
          ),

          // bookmark icon here
          Padding(
            padding: EdgeInsets.only(right: 36.w),
            child: Image.asset(AppAssets.bookmark),
          )
        ],
      ),
    );
  }
}
