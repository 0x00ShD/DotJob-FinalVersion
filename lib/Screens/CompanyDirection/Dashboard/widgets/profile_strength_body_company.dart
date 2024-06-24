import 'package:flutter/material.dart';
import 'package:untitled1/Screens/CompanyDirection/Dashboard/widgets/profile_strength_chart_company.dart';
import 'package:untitled1/Screens/CompanyDirection/Dashboard/widgets/profile_strength_details_company.dart';
import 'package:untitled1/Screens/UserDirection/Dashboard/utils/size_config.dart';
import 'package:untitled1/Screens/UserDirection/Dashboard/widgets/detailed_income_chart.dart';

class ProfileStrengthBodyCompany extends StatelessWidget {
  const ProfileStrengthBodyCompany({
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
              Expanded(flex: 2, child: ProfileStrengthDetailsCompany()),
              Expanded(child: ProfileStrengthChartCompany()),
            ],
          );
  }
}
