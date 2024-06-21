import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/Screens/UserDirection/Dashboard/widgets/custom_background_container.dart';
import 'package:untitled1/Screens/UserDirection/Dashboard/widgets/profile_strength_body.dart';
import 'package:untitled1/Screens/UserDirection/Dashboard/widgets/profile_strength_header.dart';

class ProfileStrengthSection extends StatelessWidget {
  const ProfileStrengthSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
        child: Column(
      children: [
        FadeInLeft(
            delay: const Duration(milliseconds: 800),
            duration: const Duration(milliseconds: 900),
            child: const ProfileStrengthHeader()),
        FadeInRight(
            delay: const Duration(milliseconds: 800),
            duration: const Duration(milliseconds: 900),
            child: const ProfileStrengthBody())
      ],
    ));
  }
}
