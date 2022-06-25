import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import '../series/mining_series.dart';

class MiningChart extends StatelessWidget {
  final List<MiningSeries> data;

  MiningChart({required this.data});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<MiningSeries, String>> series = [
      charts.Series(
          id: "Emissions",
          data: data,
          domainFn: (MiningSeries series, _) => series.name,
          measureFn: (MiningSeries series, _) => series.emissions,
          colorFn: (MiningSeries series, _) => series.barColor)
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
                "Emissions for Mining & Metals Sector by Year and Scope",
              ),
              Expanded(
                child: charts.BarChart(
                  series,
                  animate: true,
                  behaviors: [new charts.SeriesLegend()],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
