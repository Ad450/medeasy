import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RescheduleOrCancel extends StatelessWidget {
  final VoidCallback onReschedule;
  final VoidCallback onCancel;

  const RescheduleOrCancel({required this.onCancel, required this.onReschedule, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        GestureDetector(
            onTap: onReschedule,
            child: Text(
              'Reschedule',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(fontSize: 10, color: Colors.black, fontWeight: FontWeight.w400),
            )),
        SizedBox(width: 39.w),
        GestureDetector(
          onTap: onCancel,
          child: Text(
            'Cancel',
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(fontSize: 10, color: Colors.black, fontWeight: FontWeight.w400),
          ),
        ),
      ],
    );
  }
}
