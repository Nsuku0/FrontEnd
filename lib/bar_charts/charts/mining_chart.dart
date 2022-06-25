import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import '../../constants/constants.dart';

class MiningChart extends StatelessWidget {
  List<charts.Series> seriesList;
  final bool animate;

  MiningChart(this.seriesList, {required this.animate});

  factory MiningChart.withSampleData() {
    return new MiningChart(
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
      barGroupingType: charts.BarGroupingType.stacked,
      // Add the series legend behavior to the chart to turn on series legends.
      // By default the legend will display above the chart.
      behaviors: [new charts.SeriesLegend()],
    );
  }

  /// Create series list with multiple series
  static List<charts.Series<Emissions, String>> _createSampleData() {
    final scope1_2020 = [
      new Emissions('Anglo American', 875714),
      new Emissions('Exxaro SA', 385000),
      new Emissions('Implats', 380114),
    ];

    final scope2_2020 = [
      new Emissions('Anglo American', 1428571),
      new Emissions('Exxaro SA', 650000),
      new Emissions('Implats', 2925700),
    ];

    final scope1_2021 = [
      new Emissions('Anglo American', 875714),
      new Emissions('Exxaro SA', 345000),
      new Emissions('Implats', 447247),
    ];

    final scope2_2021 = [
      new Emissions('Anglo American', 1428571),
      new Emissions('Exxaro SA', 650000),
      new Emissions('Implats', 3307630),
    ];
    return [
      new charts.Series<Emissions, String>(
        id: 'Scope 1 (2020)',
        colorFn: (_, __) => charts.ColorUtil.fromDartColor(pinks[0]),
        domainFn: (Emissions emission, _) => emission.name,
        measureFn: (Emissions emission, _) => emission.emissions,
        data: scope1_2020,
      ),
      new charts.Series<Emissions, String>(
        id: 'Scope 2 (2020)',
        colorFn: (_, __) => charts.ColorUtil.fromDartColor(pinks[1]),
        domainFn: (Emissions emission, _) => emission.name,
        measureFn: (Emissions emission, _) => emission.emissions,
        data: scope2_2020,
      ),
      new charts.Series<Emissions, String>(
        id: 'Scope 1 (2021)',
        colorFn: (_, __) => charts.ColorUtil.fromDartColor(pinks[2]),
        domainFn: (Emissions emission, _) => emission.name,
        measureFn: (Emissions emission, _) => emission.emissions,
        data: scope1_2021,
      ),
      new charts.Series<Emissions, String>(
        id: 'Scope 2 (2021)',
        colorFn: (_, __) => charts.ColorUtil.fromDartColor(pinks[3]),
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
