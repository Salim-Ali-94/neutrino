import "package:flutter/material.dart";
import "package:fl_chart/fl_chart.dart";
import "package:neutrino/utility/constants.dart";


class Analytics extends StatelessWidget {

  const Analytics({ super.key });

  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(backgroundColor: granite,
                    body: SingleChildScrollView(physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                                                child: Column(children: [Container(width: screenWidth, height: 200, child: LineChart(LineChartData(minX: 0, minY: 0, maxX: 11, maxY: 6,
                                                gridData: FlGridData(show: false),
                                                borderData: FlBorderData(show: false),
                                                lineBarsData: [LineChartBarData(spots: [FlSpot(-2, 4.6), FlSpot(0, 3), FlSpot(2.6, 2),
                                                                                        FlSpot(4.9, 5), FlSpot(6.8, 2.5),
                                                                                        FlSpot(8, 4), FlSpot(9.5, 3),
                                                                                        FlSpot(11, 4), FlSpot(13, 1.8)],

                                                                                dotData: const FlDotData(show: false),
                                                                                isCurved: true, barWidth: 2, color: green,
                                                                                belowBarData: BarAreaData(show: true, gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter,
                                                                                                                                               stops: [0, 0.8], colors: [fade, granite])))])))])));

  }

}
