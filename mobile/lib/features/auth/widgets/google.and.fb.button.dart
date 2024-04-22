import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile/app/app.asset.dart';

class GoogleAndFbButton extends StatelessWidget {
  final bool isLoading;
  final VoidCallback onGoogleTap;
  final VoidCallback onFbTap;
  const GoogleAndFbButton({
    required this.onGoogleTap,
    required this.isLoading,
    required this.onFbTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        _SocialButton(
          isLoading: isLoading,
          onTap: onGoogleTap,
          buttonText: 'Google',
          social: AppAssets.google,
          width: 101.w,
          height: 53.h,
          color: Colors.white,
        ),
        _SocialButton(
          isLoading: isLoading,
          onTap: onFbTap,
          buttonText: 'Facebook',
          social: AppAssets.fb,
          width: 101.w,
          height: 53.h,
          color: Colors.white,
        )
      ],
    );
  }
}

class _SocialButton extends StatelessWidget {
  final bool isLoading;
  final VoidCallback onTap;
  final double? height;
  final double? width;
  final Color? color;
  final String buttonText;
  final String social;
  final TextStyle? buttonTextStyle;
  final Color? textColor;

  const _SocialButton({
    required this.onTap,
    required this.buttonText,
    required this.social,
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(social),
                      SizedBox(width: 3.w),
                      Text(
                        buttonText,
                        style: buttonTextStyle ??
                            Theme.of(context).textTheme.bodyLarge?.copyWith(
                                  color: textColor ?? const Color(0xff288CE8),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                ),
                      ),
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
