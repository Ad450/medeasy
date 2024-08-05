import 'package:flutter/cupertino.dart';
import 'package:mobile/widgets/platform_widget.dart';

class AdaptiveBottomNavBar extends AdaptiveWidget {
  const AdaptiveBottomNavBar({super.key});

  @override
  Widget buildAndroid() {
    return const SizedBox();
  }

  @override
  Widget buildIOS() {
    return const SizedBox();
  }
}
