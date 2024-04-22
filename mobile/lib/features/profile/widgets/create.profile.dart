import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile/features/profile/widgets/photo.avatar.dart';
import 'package:mobile/widgets/medeasy.button.dart';
import 'package:mobile/widgets/medeasy.textfied.with.label.dart';

class CreateProfile extends StatelessWidget {
  const CreateProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 24.h),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
          color: Theme.of(context).colorScheme.onPrimary.withOpacity(0.7),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 11),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 29.h),
              Text(
                'Create Profile',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Colors.white,
                    ),
              ),
              SizedBox(height: 25.h),
              PhotoAvatar(onTap: () {}),
              SizedBox(height: 14.h),
              LabeledTextfield(
                controller: TextEditingController(),
                labelText: 'First name',
              ),
              SizedBox(height: 6.h),
              LabeledTextfield(
                controller: TextEditingController(),
                labelText: 'Last name',
              ),
              SizedBox(height: 6.h),
              LabeledTextfield(
                controller: TextEditingController(),
                labelText: 'Date of birth',
              ),
              SizedBox(height: 6.h),
              LabeledTextfield(
                controller: TextEditingController(),
                labelText: 'Phone number',
              ),
              SizedBox(height: 25.h),
              MedeasyButton(
                onTap: () {},
                buttonText: 'Create profile',
                width: 141.w,
                height: 53.h,
                color: Colors.white,
                textColor: const Color(0xff288CE8),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
