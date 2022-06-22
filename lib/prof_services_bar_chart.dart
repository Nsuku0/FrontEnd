import 'package:absa_cib_ecg_dashboard/models/emissions_model.dart';
import 'package:absa_cib_ecg_dashboard/models/revenue_model.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:syncfusion_flutter_charts/charts.dart';
import 'data.dart';
import 'constants/constants.dart';

class ProfServicesChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  ProfServicesChart(this.seriesList, {required this.animate});

  factory ProfServicesChart.withSampleData() {
    return new ProfServicesChart(
      _createData(),
      animate: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new charts.BarChart(
      seriesList,
      animate: animate,
      defaultRenderer: new charts.BarRendererConfig(
          groupingType: charts.BarGroupingType.grouped),
      customSeriesRenderers: [
        new charts.LineRendererConfig(customRendererId: 'customLine')
      ],
    );
  }
}

class Emissions {
  final String name;
  final double? emissions;
  Emissions(this.name, this.emissions);
}

@override
void initState() {
  supser.initState();
  seriesList = _createData();
}

List<charts.Series> seriesList;
List<charts.Series<Emissions, String>> _createData() {
  final scope1_2020_data = [
    new Emissions(emissions[0].getName(), emissions[0].get_scope1_2020()),
    new Emissions(emissions[1].getName(), emissions[1].get_scope1_2020()),
  ];
  final scope2_2020_data = [
    new Emissions(emissions[0].getName(), emissions[0].get_scope2_2020()),
    new Emissions(emissions[1].getName(), emissions[1].get_scope2_2020()),
  ];
  final scope1_2021_data = [
    new Emissions(emissions[0].getName(), emissions[0].get_scope1_2021()),
    new Emissions(emissions[1].getName(), emissions[1].get_scope1_2021()),
  ];
  final scope2_2021_data = [
    new Emissions(emissions[0].getName(), emissions[0].get_scope2_2021()),
    new Emissions(emissions[1].getName(), emissions[1].get_scope2_2021()),
  ];
  return [
    new charts.Series<Emissions, String>(
        id: 'Scope 1 emissions, 2020',
        colorFn: (_, __) => charts.ColorUtil.fromDartColor(pinks[0]),
        domainFn: (Emissions emit, _) => emit.name,
        measureFn: (Emissions emit, _) => emit.emissions,
        data: scope1_2020_data),
    new charts.Series<Emissions, String>(
        id: 'Scope 2 emissions 2020',
        colorFn: (_, __) => charts.ColorUtil.fromDartColor(pinks[1]),
        domainFn: (Emissions emit, _) => emit.name,
        measureFn: (Emissions emit, _) => emit.emissions,
        data: scope2_2020_data),
    new charts.Series<Emissions, String>(
        id: 'Scope 1 emissions 2021',
        colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
        domainFn: (Emissions emit, _) => emit.name,
        measureFn: (Emissions emit, _) => emit.emissions,
        data: scope1_2021_data),
    new charts.Series<Emissions, String>(
        id: 'Scope 2 emissions 2021',
        colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
        domainFn: (Emissions emit, _) => emit.name,
        measureFn: (Emissions emit, _) => emit.emissions,
        data: scope2_2021_data),
  ];
}

barChart() {
  return charts.BarChart(
    seriesList,
    animate: true,
    vertical: false,
    barGroupingType: charts.BarGroupingType.grouped,
    defaultRenderer: charts.BarRendererConfig(
      groupingType: charts.BarGroupingType.grouped,
      strokeWidthPx: 1.0,
    ),
    domainAxis: charts.OrdinalAxisSpec(
      renderSpec: charts.NoneRenderSpec(),
    ),
  );
}
