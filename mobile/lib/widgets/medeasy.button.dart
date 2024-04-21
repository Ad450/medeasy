import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                    style: buttonTextStyle ?? Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.white),
                  ),
                ),
        ),
      ),
    );
  }
}
