import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ProfileStrengthChart extends StatefulWidget {
  const ProfileStrengthChart({super.key});

  @override
  State<ProfileStrengthChart> createState() => _ProfileStrengthChartState();
}

class _ProfileStrengthChartState extends State<ProfileStrengthChart> {
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
          value: 60,
          radius: activeIndex == 0 ? 60 : 50,
          color: const Color(0xFF010100),
        ),
        PieChartSectionData(
          value: 25,
          radius: activeIndex == 1 ? 60 : 50,
          showTitle: false,
          color: const Color(0xFFFDB750),
        ),
        PieChartSectionData(
          value: 15,
          radius: activeIndex == 2 ? 60 : 50,
          showTitle: false,
          color: const Color(0xFFFC2E20),
        ),
      ],
    );
  }
}
