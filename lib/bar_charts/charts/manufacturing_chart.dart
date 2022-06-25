import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import '../../constants/constants.dart';

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
      barGroupingType: charts.BarGroupingType.stacked,
      // Add the series legend behavior to the chart to turn on series legends.
      // By default the legend will display above the chart.
      behaviors: [new charts.SeriesLegend()],
    );
  }

  /// Create series list with multiple series
  static List<charts.Series<Emissions, String>> _createSampleData() {
    final pernod_ricard_2020 = [
      new Emissions('Pernod Ricard SA',
          385), // 1 2020      new Emissions('Pernod Ricard SA', 1035), // 2 2020
    ];

    final pernod_ricard_2021 = [
      new Emissions('Pernod Ricard SA', 345), // 1 2021
      new Emissions('Pernod Ricard SA', 650), // 2 2021
    ];

    final nestle_2020 = [
      new Emissions('Nestle SA', 579), // 1 2020
      new Emissions('Nestle SA', 1555), // 2 2020
    ];

    final nestle_2021 = [
      new Emissions('Nestle SA', 730), // 1 2021
      new Emissions('Nestle SA', 1375), // 2 2021
    ];

    final isuzu_2020 = [
      new Emissions('Isuzu Motors SA', 71598), // 1 2020
      new Emissions('Isuzu Motors SA', 371340), // 2 2020
    ];

    final isuzu_2021 = [
      new Emissions('Isuzu Motors SA', 78709), // 1 2021
      new Emissions('Isuzu Motors SA', 353716), // 2 2021
    ];

    return [
      new charts.Series<Emissions, String>(
        id: 'Nestle (2020)',
        colorFn: (_, __) => charts.ColorUtil.fromDartColor(pinks[3]),
        domainFn: (Emissions emission, _) => emission.name,
        measureFn: (Emissions emission, _) => emission.emissions,
        data: nestle_2020,
      ),
      new charts.Series<Emissions, String>(
        id: 'Nestle (2021)',
        colorFn: (_, __) => charts.ColorUtil.fromDartColor(pinks[2]),
        domainFn: (Emissions emission, _) => emission.name,
        measureFn: (Emissions emission, _) => emission.emissions,
        data: nestle_2021,
      ),
      new charts.Series<Emissions, String>(
        id: 'Pernod Ricard (2020)',
        colorFn: (_, __) => charts.ColorUtil.fromDartColor(pinks[1]),
        domainFn: (Emissions emission, _) => emission.name,
        measureFn: (Emissions emission, _) => emission.emissions,
        data: pernod_ricard_2020,
      ),
      new charts.Series<Emissions, String>(
        id: 'Pernod Ricard (2021)',
        colorFn: (_, __) => charts.ColorUtil.fromDartColor(pinks[0]),
        domainFn: (Emissions emission, _) => emission.name,
        measureFn: (Emissions emission, _) => emission.emissions,
        data: pernod_ricard_2021,
      ),
      new charts.Series<Emissions, String>(
        id: 'Isuzu Motors (2020)',
        colorFn: (_, __) => charts.ColorUtil.fromDartColor(pinks[3]),
        domainFn: (Emissions emission, _) => emission.name,
        measureFn: (Emissions emission, _) => emission.emissions,
        data: isuzu_2020,
      ),
      new charts.Series<Emissions, String>(
        id: 'Isuzu Motors (2021)',
        colorFn: (_, __) => charts.ColorUtil.fromDartColor(pinks[2]),
        domainFn: (Emissions emission, _) => emission.name,
        measureFn: (Emissions emission, _) => emission.emissions,
        data: isuzu_2021,
      ),
    ];
  }
}

class Emissions {
  final String name;
  final int emissions;

  Emissions(this.name, this.emissions);
}
