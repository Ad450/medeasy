import 'package:flutter/material.dart';
import 'package:mobile/widgets/medeasy.back.button.dart';
import 'package:mobile/widgets/medeasy.symbol.dart';

class MedeasyWrapper extends StatelessWidget {
  final bool hasLeading;
  final Widget? leading;
  final List<Widget>? trailing;
  final Widget child;

  MedeasyWrapper({
    this.leading,
    this.trailing,
    this.hasLeading = false,
    required this.child,
    super.key,
  }) : assert(() {
          if (hasLeading && leading == null) {
            return false;
          }
          return true;
        }());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: hasLeading ? const MedeasyBackButton() : null,
        title: const MedeasySymbol(),
        centerTitle: true,
        actions: trailing,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
      ),
      body: child,
    );
  }
}
