import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile/widgets/platform_widget.dart';

class AdaptiveButton extends AdaptiveWidget {
  const AdaptiveButton({
    required this.onPressed,
    required this.child,
    required this.isLoading,
    this.color,
    this.icon,
    this.label,
    this.style,
    super.key,
  });

  const factory AdaptiveButton.icon({
    required Widget child,
    required VoidCallback onPressed,
    required bool isLoading,
    required Icon icon,
    required Widget label,
    Color? color,
    ButtonStyle? style,
  }) = _AdaptiveIconWIthButton;

  final VoidCallback onPressed;
  final Widget child;
  final bool isLoading;
  final Icon? icon;
  final Widget? label;
  final Color? color;
  final ButtonStyle? style;

  @override
  Widget buildAndroid() {
    return ElevatedButton(onPressed: onPressed, child: child);
  }

  @override
  Widget buildIOS() {
    return CupertinoButton(onPressed: onPressed, color: color, child: child);
  }
}

class _AdaptiveIconWIthButton extends AdaptiveButton {
  const _AdaptiveIconWIthButton({
    required Widget child,
    required VoidCallback onPressed,
    required bool isLoading,
    required Icon icon,
    required Widget label,
    Color? color,
    ButtonStyle? style,
  }) : super(
          onPressed: onPressed,
          child: child,
          isLoading: isLoading,
          icon: icon,
          label: label,
          color: color,
          style: style,
        );

  @override
  Widget buildAndroid() {
    return ElevatedButton.icon(onPressed: onPressed, icon: icon!, label: label!, style: style);
  }

  @override
  Widget buildIOS() {
    return CupertinoButton(onPressed: onPressed, color: color, child: child);
  }
}

class MedeasyButton extends StatelessWidget {
  final VoidCallback onTap;
  final double? height;
  final double? width;
  final Color? color;
  final Color? textColor;
  final String buttonText;
  final bool isLoading;
  final TextStyle? buttonTextStyle;
  const MedeasyButton({
    required this.onTap,
    required this.buttonText,
    this.isLoading = false,
    this.height,
    this.width,
    this.color,
    this.textColor,
    this.buttonTextStyle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: isLoading,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: height ?? 63.h,
          width: width ?? double.infinity,
          decoration: BoxDecoration(
            color: color ?? Theme.of(context).colorScheme.onPrimary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: isLoading
              ? CupertinoActivityIndicator(
                  color: Theme.of(context).colorScheme.onPrimary,
                )
              : Center(
                  child: Text(
                    buttonText,
                    style: buttonTextStyle ??
                        Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: textColor ?? Colors.white,
                            ),
                  ),
                ),
        ),
      ),
    );
  }
}
