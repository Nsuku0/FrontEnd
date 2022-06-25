import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import '../series/manufacturing_series.dart';

class ManufacturingChart extends StatelessWidget {
  List<charts.Series> seriesList;
  final bool animate;

  ManufacturingChart(this.seriesList, {required this.animate});

  factory ManufacturingChart.withSampleData() {
    return new ManufacturingChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new charts.BarChart(
      seriesList = _createSampleData(),
      animate: animate,
      barGroupingType: charts.BarGroupingType.grouped,
      // Add the series legend behavior to the chart to turn on series legends.
      // By default the legend will display above the chart.
      behaviors: [new charts.SeriesLegend()],
    );
  }

  /// Create series list with multiple series
  static List<charts.Series<Emissions, String>> _createSampleData() {
    final scope1_2020 = [
      new Emissions('Pernod Ricard SA', 385),
      new Emissions('Nestle SA', 579),
      new Emissions('Isuzu Motors SA', 71598),
    ];

    final scope2_2020 = [
      new Emissions('Pernod Ricard SA', 1035),
      new Emissions('Nestle SA', 1555),
      new Emissions('Isuzu Motors SA', 371340),
    ];

    final scope1_2021 = [
      new Emissions('Pernod Ricard SA', 345),
      new Emissions('Nestle SA', 730),
      new Emissions('Isuzu Motors SA', 78709),
    ];

    final scope2_2021 = [
      new Emissions('Pernod Ricard SA', 650),
      new Emissions('Nestle SA', 1375),
      new Emissions('Isuzu Motors SA', 353716),
    ];
    return [
      new charts.Series<Emissions, String>(
        id: 'Scope 1 (2020)',
        domainFn: (Emissions emission, _) => emission.name,
        measureFn: (Emissions emission, _) => emission.emissions,
        data: scope1_2020,
      ),
      new charts.Series<Emissions, String>(
        id: 'Scope 2 (2020)',
        domainFn: (Emissions emission, _) => emission.name,
        measureFn: (Emissions emission, _) => emission.emissions,
        data: scope2_2020,
      ),
      new charts.Series<Emissions, String>(
        id: 'Scope 1 (2021)',
        domainFn: (Emissions emission, _) => emission.name,
        measureFn: (Emissions emission, _) => emission.emissions,
        data: scope1_2021,
      ),
      new charts.Series<Emissions, String>(
        id: 'Scope 2 (2021)',
        domainFn: (Emissions emission, _) => emission.name,
        measureFn: (Emissions emission, _) => emission.emissions,
        data: scope2_2021,
      ),
    ];
  }
}

class Emissions {
  final String name;
  final int emissions;

  Emissions(this.name, this.emissions);
}
