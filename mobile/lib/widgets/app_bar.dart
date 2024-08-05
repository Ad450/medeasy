import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:mobile/widgets/medeasy.symbol.dart';
import 'package:mobile/widgets/platform_widget.dart';

class AdaptiveAppbar extends AdaptiveWidget implements PreferredSizeWidget {
  const AdaptiveAppbar(
      {super.key,
      this.trailing,
      this.backgroundColor,
      this.implyLeading,
      this.actions});

  final Widget? trailing;
  final bool? implyLeading;
  final List<Widget>? actions;
  final Color? backgroundColor;

  @override
  Widget buildAndroid() {
    return AppBar(
      title: const MedeasySymbol(),
      centerTitle: true,
      actions: actions,
      backgroundColor: backgroundColor,
      automaticallyImplyLeading: implyLeading ?? true,
    );
  }

  @override
  Widget buildIOS() {
    return CupertinoNavigationBar(
      trailing: trailing,
      middle: const Text("MEDEASY"),
      backgroundColor: backgroundColor,
      automaticallyImplyLeading: implyLeading ?? true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
