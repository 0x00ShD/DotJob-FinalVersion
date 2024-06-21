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
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(flex: 2, child: ProfileStrengthDetails()),
              Expanded(child: ProfileStrengthChart()),
            ],
          );
  }
}
