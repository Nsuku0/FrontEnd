import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import '../series/banking_series.dart';

class BankingChart extends StatelessWidget {
  final List<BankingSeries> data;

  BankingChart({required this.data});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<BankingSeries, String>> series = [
      charts.Series(
          id: "Subscribers",
          data: data,
          domainFn: (BankingSeries series, _) => series.name,
          measureFn: (BankingSeries series, _) => series.emissions,
          colorFn: (BankingSeries series, _) => series.barColor)
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
