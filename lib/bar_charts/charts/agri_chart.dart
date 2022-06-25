import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import '../series/agri_series.dart';

class AgriChart extends StatelessWidget {
  final List<AgriSeries> data;

  AgriChart({required this.data});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<AgriSeries, String>> series = [
      charts.Series(
          id: "Subscribers",
          data: data,
          domainFn: (AgriSeries series, _) => series.name,
          measureFn: (AgriSeries series, _) => series.emissions,
          colorFn: (AgriSeries series, _) => series.barColor)
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
                "Emissions for Agriculture Sector by Year and Scope",
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
