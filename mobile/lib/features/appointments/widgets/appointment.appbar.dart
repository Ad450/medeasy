import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile/app/app.asset.dart';
import 'package:mobile/widgets/medeasy.symbol.dart';
import 'package:mobile/widgets/medeasy.textfield.dart';

class AppointmenAppBar extends StatelessWidget {
  const AppointmenAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: <Widget>[
        Container(
          height: 140.h,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(41),
              bottomLeft: Radius.circular(41),
            ),
            color: Theme.of(context).colorScheme.onPrimary.withOpacity(0.7),
          ),
        ),
        Positioned(
          top: 53.h,
          left: 0,
          right: 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                onPressed: () => Scaffold.of(context).openDrawer(),
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
              ),
              const MedeasySymbol(),
              GestureDetector(
                onTap: () {},
                child: Image.asset(AppAssets.notification),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: -40,
          left: 35,
          child: SizedBox(
            width: 313.w,
            child: Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(20),
              child: MedeasyTextField(
                height: 53,
                controller: TextEditingController(),
                hintText: 'search',
                prefixIcon: const Icon(Icons.search, color: Colors.black),
              ),
            ),
          ),
        )
      ],
    );
  }
}
