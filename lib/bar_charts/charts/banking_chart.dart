import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import '../../constants/constants.dart';

class BankingChart extends StatelessWidget {
  List<charts.Series> seriesList;
  final bool animate;

  BankingChart(this.seriesList, {required this.animate});

  factory BankingChart.withSampleData() {
    return new BankingChart(
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
      new Emissions('FNB', 8301),
      new Emissions('Nedbank ', 1265),
    ];

    final scope2_2020 = [
      new Emissions('FNB', 171),
      new Emissions('Nedbank ', 118050),
    ];

    final scope1_2021 = [
      new Emissions('FNB', 6507),
      new Emissions('Nedbank ', 1541),
    ];

    final scope2_2021 = [
      new Emissions('FNB', 153),
      new Emissions('Nedbank', 110529),
    ];
    return [
      new charts.Series<Emissions, String>(
        id: 'Scope 1 (2020)',
        colorFn: (_, __) => charts.ColorUtil.fromDartColor(pinks[3]),
        domainFn: (Emissions emission, _) => emission.name,
        measureFn: (Emissions emission, _) => emission.emissions,
        data: scope1_2020,
      ),
      new charts.Series<Emissions, String>(
        id: 'Scope 2 (2020)',
        colorFn: (_, __) => charts.ColorUtil.fromDartColor(pinks[2]),
        domainFn: (Emissions emission, _) => emission.name,
        measureFn: (Emissions emission, _) => emission.emissions,
        data: scope2_2020,
      ),
      new charts.Series<Emissions, String>(
        id: 'Scope 1 (2021)',
        colorFn: (_, __) => charts.ColorUtil.fromDartColor(pinks[1]),
        domainFn: (Emissions emission, _) => emission.name,
        measureFn: (Emissions emission, _) => emission.emissions,
        data: scope1_2021,
      ),
      new charts.Series<Emissions, String>(
        id: 'Scope 2 (2021)',
        colorFn: (_, __) => charts.ColorUtil.fromDartColor(pinks[0]),
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
