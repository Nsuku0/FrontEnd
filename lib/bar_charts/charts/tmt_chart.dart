import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import '../series/tmt_series.dart';

class TMTChart extends StatelessWidget {
  List<charts.Series> seriesList;
  final bool animate;

  TMTChart(this.seriesList, {required this.animate});

  factory TMTChart.withSampleData() {
    return new TMTChart(
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
      new Emissions('MTN', 247385),
      new Emissions('Telkom SA SOC LTD', 50101),
      new Emissions('Vodacom (PTY) LTD', 54070),
    ];

    final scope2_2020 = [
      new Emissions('MTN', 864865),
      new Emissions('Telkom SA SOC LTD', 546000),
      new Emissions('Vodacom (PTY) LTD', 556822),
    ];

    final scope1_2021 = [
      new Emissions('MTN', 566785),
      new Emissions('Telkom SA SOC LTD', 57825),
      new Emissions('Vodacom (PTY) LTD', 553982),
    ];

    final scope2_2021 = [
      new Emissions('MTN', 566785),
      new Emissions('Telkom SA SOC LTD', 50695),
      new Emissions('Vodacom (PTY) LTD', 55757),
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
