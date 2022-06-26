import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import '../../constants/constants.dart';

class MiningChart extends StatelessWidget {
  List<charts.Series> seriesList = _createSampleData();
  final bool animate = true;

  MiningChart();

  factory MiningChart.withSampleData() {
    return new MiningChart();
  }

  @override
  Widget build(BuildContext context) {
    return new charts.BarChart(
      seriesList = _createSampleData(),
      animate: animate,
      barGroupingType: charts.BarGroupingType.stacked,
      // Add the series legend behavior to the chart to turn on series legends.
      // By default the legend will display above the chart.
      defaultRenderer: charts.BarRendererConfig(
          cornerStrategy: const charts.ConstCornerStrategy(2)),

      behaviors: [
        new charts.SeriesLegend(),
        new charts.ChartTitle(
            'Scope 1 and 2 Carbon Emissions\nfor the Mining & Metals sector in 2020 and 2021',
            behaviorPosition: charts.BehaviorPosition.bottom,
            titleStyleSpec: charts.TextStyleSpec(fontSize: 11),
            titleOutsideJustification:
                charts.OutsideJustification.middleDrawArea),
        new charts.ChartTitle('Carbon emissions, metric tons',
            behaviorPosition: charts.BehaviorPosition.start,
            titleStyleSpec: charts.TextStyleSpec(fontSize: 11),
            titleOutsideJustification:
                charts.OutsideJustification.middleDrawArea)
      ],
    );
  }

  /// Create series list with multiple series
  static List<charts.Series<Emissions, String>> _createSampleData() {
    final anglo_2020 = [
      new Emissions('Anglo American', 875714), //1 2020
      new Emissions('Anglo American', 1428571), //2 2020
    ];

    final anglo_2021 = [
      new Emissions('Anglo American', 875714), //1 2021
      new Emissions('Anglo American', 1428571), //2 2021
    ];

    final exxaro_2020 = [
      new Emissions('Exxaro SA', 385000), //1 2020
      new Emissions('Exxaro SA', 650000), //2 2020
    ];

    final exxaro_2021 = [
      new Emissions('Exxaro SA', 345000), //1 2021
      new Emissions('Exxaro SA', 650000), //2 2021
    ];

    final implats_2020 = [
      new Emissions('Implats', 380114), //1 2020
      new Emissions('Implats', 2925700), //2 2020
    ];

    final implats_2021 = [
      new Emissions('Implats', 447247), //1 2021
      new Emissions('Implats', 3307630), //2 2021
    ];

    return [
      new charts.Series<Emissions, String>(
        id: 'Anglo American (2020)',
        colorFn: (_, __) => charts.ColorUtil.fromDartColor(pinks[0]),
        domainFn: (Emissions emission, _) => emission.name,
        measureFn: (Emissions emission, _) => emission.emissions,
        data: anglo_2020,
      ),
      new charts.Series<Emissions, String>(
        id: 'Anglo American (2021)',
        colorFn: (_, __) => charts.ColorUtil.fromDartColor(pinks[1]),
        domainFn: (Emissions emission, _) => emission.name,
        measureFn: (Emissions emission, _) => emission.emissions,
        data: anglo_2021,
      ),
      new charts.Series<Emissions, String>(
        id: 'Exxaro (2020)',
        colorFn: (_, __) => charts.ColorUtil.fromDartColor(pinks[2]),
        domainFn: (Emissions emission, _) => emission.name,
        measureFn: (Emissions emission, _) => emission.emissions,
        data: exxaro_2020,
      ),
      new charts.Series<Emissions, String>(
        id: 'Exxaro(2021)',
        colorFn: (_, __) => charts.ColorUtil.fromDartColor(pinks[3]),
        domainFn: (Emissions emission, _) => emission.name,
        measureFn: (Emissions emission, _) => emission.emissions,
        data: exxaro_2021,
      ),
      new charts.Series<Emissions, String>(
        id: 'Implats (2020)',
        colorFn: (_, __) => charts.ColorUtil.fromDartColor(pinks[2]),
        domainFn: (Emissions emission, _) => emission.name,
        measureFn: (Emissions emission, _) => emission.emissions,
        data: implats_2020,
      ),
      new charts.Series<Emissions, String>(
        id: 'Implats (2021)',
        colorFn: (_, __) => charts.ColorUtil.fromDartColor(pinks[1]),
        domainFn: (Emissions emission, _) => emission.name,
        measureFn: (Emissions emission, _) => emission.emissions,
        data: implats_2021,
      ),
    ];
  }
}

class Emissions {
  final String name;
  final int emissions;

  Emissions(this.name, this.emissions);
}
