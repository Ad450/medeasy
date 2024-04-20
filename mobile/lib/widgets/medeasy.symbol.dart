import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile/app/app.asset.dart';

class MedeasySymbol extends StatelessWidget {
  const MedeasySymbol({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(AppAssets.medeasyImage),
        SizedBox(width: 10.w),
        Text(
          "Medeasy",
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ],
    );
  }
}
