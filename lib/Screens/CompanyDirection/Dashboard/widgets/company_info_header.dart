import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled1/Screens/UserDirection/Dashboard/utils/app_styles.dart';

class CompanyInfoHeader extends StatelessWidget {
  const CompanyInfoHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'The Informations of Company',
          style: AppStyles.styleSemiBold20(context),
        ),
        const Expanded(
          child: SizedBox(),
        ),
      ],
    );
  }
}
