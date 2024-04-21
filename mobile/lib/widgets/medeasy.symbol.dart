import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile/app/app.asset.dart';

class MedeasySymbol extends StatelessWidget {
  const MedeasySymbol({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180.w,
      child: Stack(
        children: <Widget>[
          Image.asset(AppAssets.medeasyImage),
          Positioned(
            right: 45.w,
            bottom: 10.h,
            child: Text(
              "MEDEASY",
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ),
        ],
      ),
    );
  }
}
