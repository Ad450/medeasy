import 'package:flutter/material.dart';

class BackButton extends StatelessWidget {
  const BackButton({super.key, required this.onPressed});
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: const Icon(Icons.arrow_back_ios),
    );
  }
}
