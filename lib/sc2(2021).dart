import 'package:charts_flutter/flutter.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'constants/constants.dart';


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
      RevDat("Retail", 515617.5,ColorUtil.fromDartColor(pinks[1]) ),
      RevDat("Mining", 370417.5845,ColorUtil.fromDartColor(pinks[2])),
      RevDat("Prof", 306420.2096,ColorUtil.fromDartColor(pinks[3]) ),
      RevDat("Manu", 89122.59289, ColorUtil.fromDartColor(pinks[4])),
      RevDat("Agri", 35777.33616,ColorUtil.fromDartColor(oranges[1]) ),
      RevDat("TMT", 206355.5005, ColorUtil.fromDartColor(oranges[2])),
    ];
    return chartData;
  
}

class RevDat{
  RevDat(this.sector, this.emission, this.color);
  final String sector;
  final double emission;
  final Color color;
}