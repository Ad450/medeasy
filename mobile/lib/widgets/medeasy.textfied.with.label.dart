import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LabeledTextfield extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final TextStyle? hintTextStyle;
  final double? height;
  final double? width;
  final String labelText;
  const LabeledTextfield({
    required this.controller,
    required this.labelText,
    this.hintText,
    this.hintTextStyle,
    this.width,
    this.height,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Colors.white,
              ),
        ),
        SizedBox(height: 6.h),
        TextField(
          controller: controller,
          showCursor: true,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: hintText,
            hintStyle: hintTextStyle,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.white, style: BorderStyle.none),
            ),
            alignLabelWithHint: true,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.white, style: BorderStyle.none),
            ),
          ),
        ),
      ],
    );
  }
}
