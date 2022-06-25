/// Bar chart with series legend example
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class AgriChart extends StatelessWidget {
  List<charts.Series> seriesList;
  final bool animate;

  AgriChart(this.seriesList, {required this.animate});

  factory AgriChart.withSampleData() {
    return new AgriChart(
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
      new Emissions('Country Bird Holdings (PTY)', 19221),
      new Emissions('Karan Beef Feedlot ', 12649),
      new Emissions('Afgri Grain Marketing (PTY) LTD', 164384),
    ];

    final scope2_2020 = [
      new Emissions('Country Bird Holdings (PTY)', 57500),
      new Emissions('Karan Beef Feedlot ', 378400),
      new Emissions('Afgri Grain Marketing (PTY) LTD', 491758),
    ];

    final scope1_2021 = [
      new Emissions('Country Bird Holdings (PTY)', 15837),
      new Emissions('Karan Beef Feedlot ', 228075),
      new Emissions('Afgri Grain Marketing (PTY) LTD', 153247),
    ];

    final scope2_2021 = [
      new Emissions('Country Bird Holdings (PTY)', 52010),
      new Emissions('Karan Beef Feedlot ', 749018),
      new Emissions('Afgri Grain Marketing (PTY) LTD', 503277),
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
