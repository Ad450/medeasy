import 'package:flutter/material.dart';

class AppointmentTextfield extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final TextStyle? hintTextStyle;
  final double? height;
  final double? width;
  final String? labelText;

  const AppointmentTextfield({
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
        prefixIcon: const Icon(Icons.search),
        filled: true,
        fillColor: Colors.white,
        hintText: 'search',
        hintStyle: Theme.of(context)
            .textTheme
            .bodySmall
            ?.copyWith(fontSize: 13, fontWeight: FontWeight.w500, color: const Color(0xffBBBBBB)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.red, style: BorderStyle.none),
        ),
        labelText: labelText,
        alignLabelWithHint: true,
      ),
    );
  }
}
