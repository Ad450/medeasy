import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mobile/app/app.asset.dart';

class MedeasyBackButton extends StatelessWidget {
  const MedeasyBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.back(),
      child: Image.asset(AppAssets.arrowBack),
    );
  }
}
