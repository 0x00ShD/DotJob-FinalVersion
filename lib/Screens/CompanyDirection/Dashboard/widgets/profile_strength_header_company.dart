import 'package:flutter/material.dart';
import 'package:untitled1/Screens/UserDirection/Dashboard/utils/app_styles.dart';

class ProfileStrengthHeaderCompany extends StatelessWidget {
  const ProfileStrengthHeaderCompany({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'CV Compatibility',
          style: AppStyles.styleSemiBold20(context),
        ),
      ],
    );
  }
}
