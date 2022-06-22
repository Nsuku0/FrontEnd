import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';


class MyApp extends StatelessWidget{
  MyApp({Key? key}) : super(key: key);

    late List<RevDat> chartData;  // initializes chart data field
    
    @override
    void initState(){
      chartData = getSectorInfo();
      super.initState();
    }

    @override
    Widget build(BuildContext context){
      return SafeArea(
        child: Scaffold(
          body: SfCircularChart(
       title: 
              ChartTitle(text:"2020 Scope 1 - Average Emissions Per Sector"),
       legend: 
              Legend(isVisible: true, overflowMode: LegendItemOverflowMode.wrap),
       series: <CircularSeries>[
            PieSeries<RevDat, String>(
              dataSource: chartData,
              xValueMapper: (RevDat data,_) => data.sector,
              yValueMapper: (RevDat data,_) => data.emission,
              dataLabelSettings: DataLabelSettings(isVisible: true,))
        ],
          )));        // returns chart in usable area
    }
    
  

  List<RevDat> getSectorInfo(){
    final List<RevDat> chartData = [
      RevDat("Retail", 555300),
      RevDat("Mining", 31630.54904),
      RevDat("Prof", 27277.33137),
      RevDat("Manu", 18244.88057),
      RevDat("Agri", 13238.0099 ),
      RevDat("TMT",18427.67367),
    ];
    return chartData;
  }
}

class RevDat{
  RevDat(this.sector, this.emission);
  final String sector;
  final double emission;
}