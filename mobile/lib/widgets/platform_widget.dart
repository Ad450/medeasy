import 'dart:io';

import 'package:flutter/cupertino.dart';

abstract class AdaptiveWidget extends StatelessWidget {
  const AdaptiveWidget({super.key});

  Widget buildIOS();
  Widget buildAndroid();

  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid ? buildAndroid() : buildIOS();
  }
}
