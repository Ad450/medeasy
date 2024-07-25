import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile/features/auth/widgets/auth.widget.dart';
import 'package:mobile/widgets/medeasy.wrapper.dart';

// @RoutePage()
class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return MedeasyWrapper(
      hasLeading: true,
      child: Padding(
        padding: EdgeInsets.only(top: 74.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Text(
                'Go ahead and set up your account and\n start connecting with your doctors',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
            SizedBox(height: 30.h),
            const Expanded(child: AuthWidget()),
          ],
        ),
      ),
    );
  }
}
