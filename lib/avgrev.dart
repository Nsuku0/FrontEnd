import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';


class MyApp extends StatelessWidget{

  
    late List<RevDat> chartData;  // initializes chart data field
    
    @override
    void iniState(){
      chartData = getSectorInfo();
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
              dataSource: chartData,
              xValueMapper: (RevDat data,_) => data.sector,
              yValueMapper: (RevDat data,_) => data.revenue,)
      ])))         // returns chart in usable area
    }
    
  

  List<RevDat> getSectorInfo(){
    final List<RevDat> chartData = [
      RevDat("Retail",123472.9 ),
      RevDat("Mining", 262915),
      RevDat("Prof",95156.5 ),
      RevDat("Manu",81221.76),
      RevDat("Agri", 72134.04),
      RevDat("TMT",45733.32),
    ]
    return chartData;
  }
}

class RevDat{
  RevDat(this.sector, this.revenue);
  final String sector;
  final double revenue;
}