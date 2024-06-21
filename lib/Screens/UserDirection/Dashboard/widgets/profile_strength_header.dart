import 'package:flutter/material.dart';
import 'package:untitled1/Screens/UserDirection/Dashboard/utils/app_styles.dart';

class ProfileStrengthHeader extends StatelessWidget {
  const ProfileStrengthHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'CV Strength',
          style: AppStyles.styleSemiBold20(context),
        ),
      ],
    );
  }
}
