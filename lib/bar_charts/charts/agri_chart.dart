import 'package:absa_cib_ecg_dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import '../../constants/constants.dart';

class AgriChart extends StatelessWidget {
  List<charts.Series> seriesList = _createSampleData();
  final bool animate = true;

  AgriChart();

  factory AgriChart.withSampleData() {
    return new AgriChart();
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
    final country_bird_2020 = [
      new Emissions('Country Bird Holdings (PTY)', 19221), //Scope 1, 2020
      new Emissions('Country Bird Holdings (PTY)', 57500), //scope 2 2020
    ];

    final country_bird_2021 = [
      new Emissions('Country Bird Holdings (PTY)', 15837), //scope 1 2021
      new Emissions('Country Bird Holdings (PTY)', 52010), //scope 2 2021
    ];

    final karan_beef_2020 = [
      new Emissions('Karan Beef Feedlot ', 12649), //Scope 1, 2020
      new Emissions('Karan Beef Feedlot ', 37840), //scope 2 2020
    ];

    final karan_beef_2021 = [
      new Emissions('Karan Beef Feedlot ', 228075), //scope 1 2021
      new Emissions('Karan Beef Feedlot ', 749018), //scope 2 2021
    ];

    final afgri_2020 = [
      new Emissions('Afgri Grain Marketing (PTY) LTD', 164384), //Scope 1, 2020
      new Emissions('Afgri Grain Marketing (PTY) LTD', 491758), //scope 2 2020
    ];

    final afgri_2021 = [
      new Emissions('Afgri Grain Marketing (PTY) LTD', 153247), //scope 1 2021
      new Emissions('Afgri Grain Marketing (PTY) LTD', 503277), //scope 2 2021
    ];
    return [
      new charts.Series<Emissions, String>(
        id: 'Country Bird Holdings (2020)',
        colorFn: (_, __) => charts.ColorUtil.fromDartColor(pinks[3]),
        domainFn: (Emissions emission, _) => emission.name,
        measureFn: (Emissions emission, _) => emission.emissions,
        data: country_bird_2020,
      ),
      new charts.Series<Emissions, String>(
        id: 'Country Bird Holdings (2021)',
        colorFn: (_, __) => charts.ColorUtil.fromDartColor(pinks[2]),
        domainFn: (Emissions emission, _) => emission.name,
        measureFn: (Emissions emission, _) => emission.emissions,
        data: country_bird_2021,
      ),
      new charts.Series<Emissions, String>(
        id: 'Karan Beef Holdings (2020)',
        colorFn: (_, __) => charts.ColorUtil.fromDartColor(pinks[1]),
        domainFn: (Emissions emission, _) => emission.name,
        measureFn: (Emissions emission, _) => emission.emissions,
        data: karan_beef_2020,
      ),
      new charts.Series<Emissions, String>(
        id: 'Karan Beef Holdings (2021)',
        colorFn: (_, __) => charts.ColorUtil.fromDartColor(pinks[0]),
        domainFn: (Emissions emission, _) => emission.name,
        measureFn: (Emissions emission, _) => emission.emissions,
        data: karan_beef_2021,
      ),
      new charts.Series<Emissions, String>(
        id: 'Afgri Grain Marketing (2020)',
        colorFn: (_, __) => charts.ColorUtil.fromDartColor(pinks[3]),
        domainFn: (Emissions emission, _) => emission.name,
        measureFn: (Emissions emission, _) => emission.emissions,
        data: afgri_2020,
      ),
      new charts.Series<Emissions, String>(
        id: 'Afgri Grain Marketing (2021)',
        colorFn: (_, __) => charts.ColorUtil.fromDartColor(pinks[2]),
        domainFn: (Emissions emission, _) => emission.name,
        measureFn: (Emissions emission, _) => emission.emissions,
        data: afgri_2021,
      ),
    ];
  }
}

class Emissions {
  final String name;
  final int emissions;

  Emissions(this.name, this.emissions);
}
