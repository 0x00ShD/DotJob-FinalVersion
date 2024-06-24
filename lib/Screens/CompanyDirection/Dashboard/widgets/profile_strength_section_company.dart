import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/Screens/CompanyDirection/Dashboard/widgets/profile_strength_body_company.dart';
import 'package:untitled1/Screens/CompanyDirection/Dashboard/widgets/profile_strength_header_company.dart';
import 'package:untitled1/Screens/UserDirection/Dashboard/widgets/custom_background_container.dart';

class ProfileStrengthSectionCompany extends StatelessWidget {
  const ProfileStrengthSectionCompany({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
        child: Column(
      children: [
        FadeInLeft(
            delay: const Duration(milliseconds: 800),
            duration: const Duration(milliseconds: 900),
            child: const ProfileStrengthHeaderCompany()),
        FadeInRight(
            delay: const Duration(milliseconds: 800),
            duration: const Duration(milliseconds: 900),
            child: const ProfileStrengthBodyCompany())
      ],
    ));
  }
}
