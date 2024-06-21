import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled1/Screens/UserDirection/Dashboard/utils/app_styles.dart';

class AllExpensessHeader extends StatelessWidget {
  const AllExpensessHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FadeInLeft(
          delay: const Duration(milliseconds: 800),
          duration: const Duration(milliseconds: 900),
          child: Text(
            'All visitors',
            style: AppStyles.styleSemiBold20(context),
          ),
        ),
        const Expanded(
          child: SizedBox(),
        ),
      ],
    );
  }
}
