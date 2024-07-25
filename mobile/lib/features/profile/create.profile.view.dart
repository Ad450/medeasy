import 'package:flutter/material.dart';
import 'package:mobile/features/profile/widgets/create.profile.dart';
import 'package:mobile/widgets/medeasy.wrapper.dart';

// @RoutePage()
class CreateProfileView extends StatelessWidget {
  const CreateProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const MedeasyWrapper(
      child: CreateProfile(),
    );
  }
}
