import 'package:flutter/material.dart';
import 'package:mobile/widgets/app_bar.dart';

class MedeasyWrapper extends StatelessWidget {
  const MedeasyWrapper({
    required this.child,
    this.actions,
    this.hasLeading = false,
    this.trailing,
    super.key,
  });
  final bool hasLeading;
  final List<Widget>? actions;
  final Widget? trailing;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AdaptiveAppbar(
        trailing: trailing,
        backgroundColor: Colors.white,
        actions: actions,
      ),
      body: child,
    );
  }
}
