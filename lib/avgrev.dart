import 'package:charts_flutter/flutter.dart';
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
              ChartTitle(text:"Average Revenue Per Sector"),  //returns titlte on piechart
      legend: 
              Legend(isVisible: true, overflowMode: LegendItemOverflowMode.wrap), //returns key/legend on piechart  
            series: <CircularSeries>[ 
              PieSeries<RevDat, String>(
              dataSource: _chartData,
              xValueMapper: (RevDat data,_) => data.sector,
              yValueMapper: (RevDat data,_) => data.revenue,
              pointColorMapper: (RevDat data, _) => data.color,)
      ])));        // returns chart in usable area
    }
    
  

  List<RevDat> getSectorInfo(){
    final List<RevDat> chartData = [
      RevDat("Retail",123472.9, ColorUtil.fromDartColor(Color(0xFFf1f1f1))),
      RevDat("Mining", 262915,ColorUtil.fromDartColor(Color(0xFFf1f1f1);) ),
      RevDat("Prof",95156.5, ColorUtil.fromDartColor(Color(0xFFf1f1f1);) ),
      RevDat("Manu",81221.76,ColorUtil.fromDartColor(Color(0xFFf1f1f1);) ),
      RevDat("Agri", 72134.04,ColorUtil.fromDartColor(Color(0xFFf1f1f1);) ),
      RevDat("TMT",45733.32,ColorUtil.fromDartColor(Color (0xFFf1f1f1);) ),
    ];
    return chartData;
  }
}

class RevDat{
  RevDat(this.sector, this.revenue, this.color);
  final String sector;
  final double revenue;
  final Color color; //variable to allow specifiation of colour
}