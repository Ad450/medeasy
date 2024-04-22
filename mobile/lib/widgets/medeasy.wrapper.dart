import 'package:flutter/material.dart';
import 'package:mobile/widgets/medeasy.back.button.dart';
import 'package:mobile/widgets/medeasy.symbol.dart';

class MedeasyWrapper extends StatelessWidget {
  final bool hasLeading;
  final List<Widget>? trailing;
  final Widget child;

  MedeasyWrapper({
    this.trailing,
    this.hasLeading = false,
    required this.child,
    super.key,
  });

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
