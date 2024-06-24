import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ProfileStrengthChartCompany extends StatefulWidget {
  const ProfileStrengthChartCompany({super.key});

  @override
  State<ProfileStrengthChartCompany> createState() =>
      _ProfileStrengthChartCompanyState();
}

class _ProfileStrengthChartCompanyState
    extends State<ProfileStrengthChartCompany> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(getChartData()),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pietouchResponse) {
          activeIndex =
              pietouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          showTitle: false,
          value: 50,
          radius: activeIndex == 0 ? 60 : 50,
          color: const Color(0xFF010100),
        ),
        PieChartSectionData(
          value: 30,
          radius: activeIndex == 1 ? 60 : 50,
          showTitle: false,
          color: const Color(0xFFFDB750),
        ),
        PieChartSectionData(
          value: 20,
          radius: activeIndex == 2 ? 60 : 50,
          showTitle: false,
          color: const Color(0xFFFC2E20),
        ),
      ],
    );
  }
}
