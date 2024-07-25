import 'package:flutter/material.dart';

class MedeasyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final TextStyle? hintTextStyle;
  final double? height;
  final double? width;
  final String? labelText;
  final Icon? prefixIcon;
  const MedeasyTextField({
    required this.controller,
    this.hintText,
    this.hintTextStyle,
    this.width,
    this.height,
    this.labelText,
    this.prefixIcon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      showCursor: true,
      cursorColor: Colors.black,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: hintText,
        hintStyle: hintTextStyle,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: Colors.white, style: BorderStyle.none),
        ),
        labelText: labelText,
        alignLabelWithHint: true,
        prefixIcon: prefixIcon,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Colors.grey.withOpacity(0.5), style: BorderStyle.none),
        ),
      ),
    );
  }
}
