import 'package:absa_cib_ecg_dashboard/models/revenue_model.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'data.dart';
class RevBarChart extends StatelessWidget {
  final List<charts.Seriese> seriesList;
  final bool animate;

  RevBarChart(this.seriesList, {this.animate});

  factory RevBarChart.withSampleData() {
    return new RevBarChart(
      _createData(),
      animate: false;
    )
  }
}
@override
Widget build(BuildContext context) {
  return new charts.BarChart(
    seriesList,
    animate:animate,
    barGroupingType: charts.BarGroupingType.grouped,
  );
}

static List <charsts.Series<RevenueByYear, String>> _createData() {
  final 
}

class RevenueByYear {
  final String name;
  final double rev2020;
  final double rev2021;
  RevenueByYear(this.name, this.rev2020, this.rev2021);
}