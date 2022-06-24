import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import '../series/manufacturing_series.dart';

class ManufacturingChart extends StatelessWidget {
  final List<ManufacturingSeries> data;

  ManufacturingChart({required this.data});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<ManufacturingSeries, String>> series = [
      charts.Series(
          id: "Emissions",
          data: data,
          domainFn: (ManufacturingSeries series, _) => series.name,
          measureFn: (ManufacturingSeries series, _) => series.emissions,
          colorFn: (ManufacturingSeries series, _) => series.barColor)
    ];
    return Container(
      height: 400,
      padding: EdgeInsets.all(20),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Text(
                "Emissions for Manufacturing Sector by Year and Scope",
              ),
              Expanded(
                child: charts.BarChart(series, animate: true),
              )
            ],
          ),
        ),
      ),
    );
  }
}
