import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class GraphComponent extends StatefulWidget {
  GraphComponent({Key? key}) : super(key: key);

  @override
  State<GraphComponent> createState() => _GraphComponentState();
}

class _GraphComponentState extends State<GraphComponent> {
  @override
  Widget build(BuildContext context) {
    const a = [
      (1.0, 2.0),
      (3.0, 4.0),
      (4.0, 20.0),
      (5.0, 6.0),
      (9.0, 10.0),
      (3.0, 2.0),
      (1.0, 4.0),
      (8.0, 6.0),
      (7.0, 8.0),
      (10.0, 10.0)
    ];
    List<FlSpot> spots = [];
    for (int i = 0; i < a.length; i++) {
      spots.add(FlSpot(a[i].$1, a[i].$2));
    }

    return LineChart(LineChartData(
      minX: 0,
      maxX: 10,
      minY: 0,
      maxY: 20,
      borderData: FlBorderData(show: false),
      titlesData: const FlTitlesData(
          leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              interval: 1,
              getTitlesWidget: getbottomtitles,
            ),
          ),
          rightTitles: AxisTitles(
              sideTitles: SideTitles(
                  reservedSize: 40,
                  showTitles: true,
                  getTitlesWidget: getrighttitles))),
      lineBarsData: [
        LineChartBarData(
            dotData: const FlDotData(show: true),
            spots: spots,
            isCurved: true,
            barWidth: 4,
            isStrokeCapRound: true,
            // isStepLineChart: true,
            belowBarData: BarAreaData(show: true))
      ],
    ));
  }
}

Widget getbottomtitles(double values, TitleMeta meta) {
  const style = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 14,
  );

  return RotatedBox(
    quarterTurns: 4,
    child: Text(
      values.toInt().toString(),
      style: style,
    ),
  );
}

// Widget getbottomtitles(double values, TitleMeta meta) {
//   const style = TextStyle(
//     color: Colors.white,
//     fontWeight: FontWeight.bold,
//     fontSize: 14,
//   );
//   // final int intValue = values.toInt() % 7;
//   Widget text;
//   switch (values.toInt()) {
//     case 0:
//       text = const Text('SUN', style: style);
//       break;
//     case 1:
//       text = const Text('MON', style: style);
//       break;
//     case 2:
//       text = const Text('TUE', style: style);
//       break;
//     case 3:
//       text = const Text('WED', style: style);
//       break;
//     case 4:
//       text = const Text('THU', style: style);
//       break;
//     case 5:
//       text = const Text('FRI', style: style);
//       break;
//     case 6:
//       text = const Text('SAT', style: style);
//       break;
//     default:
//       text = const Text(
//         '',
//         style: style,
//       );
//       break;
//   }

//   return SideTitleWidget(child: text, axisSide: meta.axisSide);
// }

Widget getrighttitles(double values, TitleMeta meta) {
  const style = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 14,
  );

  return RotatedBox(
    quarterTurns: 4,
    child: values.toInt() == 0
        ? const Text('')
        : Text(
            values.toInt().toString(),
            style: style,
          ),
  );
}
