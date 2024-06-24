import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class JobDetailsChart extends StatelessWidget {
  JobDetailsChart({super.key});

  int activeIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: LineChart(
        sampleData1,
        duration: const Duration(milliseconds: 250),
      ),
    );
  }
}

LineChartData get sampleData1 => LineChartData(
      gridData: gridData,
      titlesData: titlesData,
      borderData: borderData,
      lineBarsData: lineBarsData,
      minX: 0,
      maxX: 12,
      minY: 0,
      maxY: 7,
    );
List<LineChartBarData> get lineBarsData => [
      lineChartBarData1,
      lineChartBarData2,
      lineChartBarData3,
    ];

LineTouchData get lineTouchData2 => const LineTouchData(
      enabled: false,
    );

FlTitlesData get titlesData => FlTitlesData(
      bottomTitles: AxisTitles(
        sideTitles: bottomTitles,
      ),
      rightTitles: const AxisTitles(
        sideTitles: SideTitles(showTitles: false),
      ),
      topTitles: const AxisTitles(
        sideTitles: SideTitles(showTitles: false),
      ),
      leftTitles: AxisTitles(
        sideTitles: leftTitles(),
      ),
    );

Widget leftTitleWidgets(double value, TitleMeta meta) {
  const style = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 14,
  );
  String text;
  switch (value.toInt()) {
    case 1:
      text = '0';
      break;
    case 2:
      text = '20';
      break;
    case 3:
      text = '40';
      break;
    case 4:
      text = '60';
      break;
    case 5:
      text = '80';
      break;
    case 6:
      text = '100';
      break;
    default:
      return Container();
  }

  return Text(text, style: style, textAlign: TextAlign.center);
}

SideTitles leftTitles() => const SideTitles(
      getTitlesWidget: leftTitleWidgets,
      showTitles: true,
      interval: 1,
      reservedSize: 25,
    );
Widget bottomTitleWidgets(double value, TitleMeta meta) {
  const style = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );
  Widget text;
  switch (value.toInt()) {
    case 1:
      text = const Text('1st \nQuarter', style: style);
      break;
    case 4:
      text = const Text('2nd \nQuarter', style: style);
      break;
    case 7:
      text = const Text('3th \nQuarter', style: style);
      break;
    case 10:
      text = const Text('4th \nQuarter', style: style);
      break;

    default:
      return Container();
  }

  return SideTitleWidget(
    axisSide: meta.axisSide,
    space: 1,
    child: text,
  );
}

SideTitles get bottomTitles => const SideTitles(
      showTitles: true,
      reservedSize: 50,
      interval: 1,
      getTitlesWidget: bottomTitleWidgets,
    );
FlGridData get gridData => const FlGridData(show: false);

FlBorderData get borderData => FlBorderData(
      show: true,
      border: const Border(
        bottom: BorderSide(color: Colors.grey),
        left: BorderSide(color: Colors.grey),
        right: BorderSide(color: Colors.transparent),
        top: BorderSide(color: Colors.transparent),
      ),
    );
LineChartBarData get lineChartBarData1 => LineChartBarData(
      isCurved: true,
      color: Colors.blue,
      barWidth: 8,
      isStrokeCapRound: true,
      dotData: const FlDotData(show: false),
      belowBarData: BarAreaData(show: false),
      spots: const [
        FlSpot(1.5, 1),
        FlSpot(2, 1.5),
        FlSpot(3.5, 1.4),
        FlSpot(5, 3.4),
        FlSpot(6.25, 2),
        FlSpot(8, 2.2),
        FlSpot(10.5, 1.8),
      ],
    );
LineChartBarData get lineChartBarData2 => LineChartBarData(
      isCurved: true,
      color: Colors.red,
      barWidth: 8,
      isStrokeCapRound: true,
      dotData: const FlDotData(show: false),
      belowBarData: BarAreaData(show: false),
      spots: const [
        FlSpot(1, 2),
        FlSpot(3, 1),
        FlSpot(5, 4),
        FlSpot(7, 3.4),
        FlSpot(10, 2.3),
        FlSpot(11, 2.9),
      ],
    );
LineChartBarData get lineChartBarData3 => LineChartBarData(
      isCurved: true,
      color: Colors.yellow,
      barWidth: 8,
      isStrokeCapRound: true,
      dotData: const FlDotData(show: false),
      belowBarData: BarAreaData(show: false),
      spots: const [
        FlSpot(1, 1),
        FlSpot(2, 2),
        FlSpot(3, 4),
        FlSpot(4, 3.4),
        FlSpot(5, 2.3),
        FlSpot(6, 2.9),
        FlSpot(7, 3.1),
        FlSpot(8, 2.3),
        FlSpot(9, 2.1),
        FlSpot(10, 3),
        FlSpot(11, 2.3),
      ],
    );
