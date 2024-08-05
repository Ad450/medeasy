import 'package:flutter/material.dart';
import 'package:mobile/app/app.asset.dart';

class MedeasyBackButton extends StatelessWidget {
  const MedeasyBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Image.asset(AppAssets.arrowBack),
    );
  }
}
