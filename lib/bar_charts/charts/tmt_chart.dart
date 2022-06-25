import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import '../series/tmt_series.dart';

class TMTChart extends StatelessWidget {
  final List<TMTSeries> data;

  TMTChart({required this.data});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<TMTSeries, String>> series = [
      charts.Series(
          id: "Emissions",
          data: data,
          domainFn: (TMTSeries series, _) => series.name,
          measureFn: (TMTSeries series, _) => series.emissions,
          colorFn: (TMTSeries series, _) => series.barColor)
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
                "Emissions for TMT Sector by Year and Scope",
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
