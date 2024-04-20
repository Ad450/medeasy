import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile/widgets/medeasy.back.button.dart';
import 'package:mobile/widgets/medeasy.symbol.dart';

class MedeasyAppbar extends StatelessWidget {
  final bool hasLeading;
  final bool hasTrailing;
  final Widget? trailing;

  MedeasyAppbar({
    required this.hasLeading,
    required this.hasTrailing,
    this.trailing,
    super.key,
  }) : assert(() {
          if (hasLeading != true && hasTrailing == true) {
            return false;
          }
          return true;
        }());

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: hasLeading ? MainAxisAlignment.spaceBetween : MainAxisAlignment.center,
      children: <Widget>[
        if (hasLeading) const MedeasyBackButton(),
        const MedeasySymbol(),
        trailing ?? SizedBox(width: 20.w),
      ],
    );
  }
}
