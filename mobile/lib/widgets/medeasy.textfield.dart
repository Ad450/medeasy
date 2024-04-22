import 'package:flutter/material.dart';

class MedeasyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final TextStyle? hintTextStyle;
  final double? height;
  final double? width;
  final String? labelText;
  const MedeasyTextField({
    required this.controller,
    this.hintText,
    this.hintTextStyle,
    this.width,
    this.height,
    this.labelText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      showCursor: true,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: hintText,
        hintStyle: hintTextStyle,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: Colors.red, style: BorderStyle.none),
        ),
        labelText: labelText,
        alignLabelWithHint: true,
      ),
    );
  }
}
