import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile/app/app.asset.dart';
import 'package:mobile/app/app.router.dart';
import 'package:mobile/widgets/medeasy.button.dart';
import 'package:mobile/widgets/medeasy.wrapper.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return MedeasyWrapper(
      hasLeading: false,
      child: Padding(
        padding: EdgeInsets.only(bottom: 70.h, left: 45.w, right: 45.w, top: 62.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: <Widget>[
                Image.asset(AppAssets.splashImage),
                SizedBox(height: 52.h),
                Text(
                  'Consult with Specialized Doctors\n In a Multi-Specialty Hospital',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            MedeasyButton(
              onTap: () => context.router.push(const SignupRoute()),
              buttonText: "Get Started",
            ),
          ],
        ),
      ),
    );
  }
}
