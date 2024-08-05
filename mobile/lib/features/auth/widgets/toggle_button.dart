import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthToggleButton extends StatelessWidget {
  final VoidCallback onLoginTapped;
  final VoidCallback onSignupTapped;
  final bool loginSelected;
  final bool signupSelected;
  const AuthToggleButton({
    required this.loginSelected,
    required this.signupSelected,
    required this.onLoginTapped,
    required this.onSignupTapped,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 63.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0Xff288CE8),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            GestureDetector(
              onTap: onLoginTapped,
              child: Container(
                height: 63.h,
                width: 180.w,
                decoration: BoxDecoration(
                  color: loginSelected ? Colors.white : const Color(0xff288CE8),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    'Login',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: loginSelected
                              ? const Color(0xff288CE8)
                              : Colors.white,
                        ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: onSignupTapped,
              child: Container(
                height: 63.h,
                width: 167.w,
                decoration: BoxDecoration(
                    color:
                        signupSelected ? Colors.white : const Color(0xff288CE8),
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Text(
                    'Signup',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: signupSelected
                              ? const Color(0xff288CE8)
                              : Colors.white,
                        ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
