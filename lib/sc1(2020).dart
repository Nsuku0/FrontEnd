import 'package:charts_flutter/flutter.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';


class MyApp extends StatelessWidget{
  MyApp({Key? key}) : super(key: key);

    late List<RevDat> _chartData;  // initializes chart data field
    
    @override
    void initState() {
      _chartData = getSectorInfo(); // returns scope emmisions data collection
      super.initState();
    }

    @override
    Widget build(BuildContext context){
      return SafeArea(
        child: Scaffold(
          body: SfCircularChart(
       title: 
              ChartTitle(text:"2020 Scope 1 - Average Emissions Per Sector"),  //returns titlte on piechart
       legend: 
              Legend(isVisible: true, overflowMode: LegendItemOverflowMode.wrap), //returns key/legend on piechart
      
       series: <CircularSeries>[
            PieSeries<RevDat, String>(
              dataSource: _chartData,
              xValueMapper: (RevDat data,_) => data.sector,
              yValueMapper: (RevDat data,_) => data.emission,
              dataLabelSettings: DataLabelSettings(isVisible: true,))
        ],
          )));        // returns chart in usable area
    }
    
  

  List<RevDat> getSectorInfo(){
    final List<RevDat> chartData = [
      RevDat("Retail", 555300, ColorUtil.fromDartColor(Color(0xFFf1f1f1))),
      RevDat("Mining", 31630.54904, ColorUtil.fromDartColor(Color(0xFFf1f1f1))),
      RevDat("Prof", 27277.33137, ColorUtil.fromDartColor(Color(0xFFf1f1f1))),
      RevDat("Manu", 18244.88057, ColorUtil.fromDartColor(Color(0xFFf1f1f1))),
      RevDat("Agri", 13238.0099, ColorUtil.fromDartColor(Color(0xFFf1f1f1))),
      RevDat("TMT",18427.67367, ColorUtil.fromDartColor(Color(0xFFf1f1f1))),
    ];
    return chartData;
  }
}

class RevDat{
  RevDat(this.sector, this.emission, this.color);
  final String sector;
  final double emission;
  final Color color; //variable to allow specifiation of colour
}