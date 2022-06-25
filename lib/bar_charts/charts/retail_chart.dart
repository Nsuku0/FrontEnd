import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import '../series/retail_series.dart';

class RetailChart extends StatelessWidget {
  final List<RetailSeries> data;

  RetailChart({required this.data});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<RetailSeries, String>> series = [
      charts.Series(
          id: "Emissions",
          data: data,
          domainFn: (RetailSeries series, _) => series.name,
          measureFn: (RetailSeries series, _) => series.emissions,
          colorFn: (RetailSeries series, _) => series.barColor)
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
                "Emissions for Retail Sector by Year and Scope",
              ),
              Expanded(
                child: charts.BarChart(
                  series,
                  animate: true,
                  behaviors: [new charts.SeriesLegend()],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
