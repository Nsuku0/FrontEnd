import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';


class MyApp extends StatelessWidget{


    late List<RevDat> _chartData;  // initializes chart data field
    
    @override
    void iniState(){
      _chartData = getSectorInfo();
      super.iniState();
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
        yValueMapper: (RevDat data,_) => data.emission,)
      ])));         // returns chart in usable area
    }
    
  }

  List<RevDat> getSectorInfo(){
    final List<RevDat> chartData = [
      RevDat("Retail", 515617.5),
      RevDat("Mining", 370417.5845),
      RevDat("Prof", 306420.2096),
      RevDat("Manu", 89122.59289),
      RevDat("Agri", 35777.33616),
      RevDat("TMT", 206355.5005),
    ];
    return chartData;
  
}

class RevDat{
  RevDat(this.sector, this.emission);
  final String sector;
  final double emission;
}