import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  final VoidCallback onTap;
  const ForgotPassword({required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Align(
        alignment: Alignment.centerRight,
        child: Text(
          'Forgot Password?',
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.w500,
              ),
        ),
      ),
    );
  }
}
