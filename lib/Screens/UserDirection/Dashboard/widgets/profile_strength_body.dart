import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/Screens/UserDirection/Dashboard/utils/size_config.dart';
import 'package:untitled1/Screens/UserDirection/Dashboard/widgets/detailed_income_chart.dart';
import 'package:untitled1/Screens/UserDirection/Dashboard/widgets/profile_strength_chart.dart';
import 'package:untitled1/Screens/UserDirection/Dashboard/widgets/profile_strength_details.dart';

class ProfileStrengthBody extends StatelessWidget {
  const ProfileStrengthBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width >= SizeConfig.desktop && width < 1750
        ? const Expanded(
            child: Padding(
            padding: EdgeInsets.all(16),
            child: DetailedIncomeChart(),
          ))
        : Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FadeInRight(
                  delay: const Duration(milliseconds: 800),
                  duration: const Duration(milliseconds: 900),
                  child:
                      const Expanded(flex: 2, child: ProfileStrengthDetails())),
              FadeInLeft(
                  delay: const Duration(milliseconds: 800),
                  duration: const Duration(milliseconds: 900),
                  child: const Expanded(child: ProfileStrengthChart())),
            ],
          );
  }
}
