import 'package:flutter/material.dart';
import 'package:mobile/widgets/medeasy.appbar.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            MedeasyAppbar(hasLeading: true, hasTrailing: false, trailing: null),
          ],
        ),
      ),
    );
  }
}
