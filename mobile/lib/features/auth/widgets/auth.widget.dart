import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile/app/app.router.dart';
import 'package:mobile/features/auth/widgets/forgot.password.dart';
import 'package:mobile/features/auth/widgets/google.and.fb.button.dart';
import 'package:mobile/features/auth/widgets/toggle_button.dart';
import 'package:mobile/widgets/medeasy.button.dart';
import 'package:mobile/widgets/medeasy.textfied.with.label.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({super.key});

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  var _loginSelected = true;
  var _signupSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
        color: Theme.of(context).colorScheme.onPrimary.withOpacity(0.7),
      ),
      child: Padding(
        padding: const EdgeInsets.all(11),
        child: Column(
          children: <Widget>[
            AuthToggleButton(
              onLoginTapped: () {
                setState(() {
                  _loginSelected = !_loginSelected;
                  _signupSelected = !_signupSelected;
                });
              },
              onSignupTapped: () {
                setState(() {
                  _loginSelected = !_loginSelected;
                  _signupSelected = !_signupSelected;
                });
              },
              loginSelected: _loginSelected,
              signupSelected: _signupSelected,
            ),
            SizedBox(height: 55.h),
            LabeledTextfield(
              controller: TextEditingController(),
              labelText: 'Email Address',
            ),
            SizedBox(height: 13.h),
            LabeledTextfield(
              controller: TextEditingController(),
              labelText: 'Password',
            ),
            SizedBox(height: 11.h),
            ForgotPassword(onTap: () {}),
            SizedBox(height: 11.h),
            MedeasyButton(
              onTap: () => context.pushRoute(const CreateProfileRoute()),
              buttonText: _loginSelected ? 'Login' : 'Signup',
              width: 101.w,
              height: 53.h,
              color: Colors.white,
              textColor: const Color(0xff288CE8),
            ),
            SizedBox(height: 14.h),
            Text(
              'Forgot Password?',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                    color: Colors.white,
                  ),
            ),
            SizedBox(height: 10.h),
            GoogleAndFbButton(onGoogleTap: () {}, isLoading: false, onFbTap: () {}),
          ],
        ),
      ),
    );
  }
}
