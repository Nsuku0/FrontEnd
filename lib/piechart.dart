import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  Map<String, double> dataMap = {
    "Flutter": 5,
    "React": 3,
    "Xamarin": 2,
    "Ionic": 2,
  };

  @override
  Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(
  title: const Text('Pie Chart'),
  ),
  body: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
  PieChart(
  dataMap: dataMap,
  animationDuration: const Duration(milliseconds: 800),
  chartLegendSpacing: 32,
  chartRadius: MediaQuery.of(context).size.width / 2,

  colorList: const [
  Colors.blue,
  Colors.yellow,
  Colors.red,
  Colors.purple
  ],

  initialAngleInDegree: 0,
  chartType: ChartType.ring,
  ringStrokeWidth: 32,
  centerText: "HYBRID",

  legendOptions: const LegendOptions(
  showLegendsInRow: false,
  legendPosition: LegendPosition.right,
  showLegends: true,
  legendShape: BoxShape.circle,

  legendTextStyle: TextStyle(
  fontWeight: FontWeight.bold,
  ),
  ),

  chartValuesOptions: const ChartValuesOptions(
  showChartValueBackground: true,
  showChartValues: true,
  showChartValuesInPercentage: false,
  showChartValuesOutside: false,
  decimalPlaces: 1,
  ),
  // gradientList: ---To add gradient colors---
  // emptyColorGradient: ---Empty Color gradient---
  )
  ],
  ),
  );
  }

}