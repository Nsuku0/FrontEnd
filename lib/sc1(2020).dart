import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';


class MyApp extends StatelessWidget{

  class MyPage extends StatefulWidget{
    late List<RevDat> chartData;  // initializes chart data field
    
    @override
    void iniState(){
      chartData = getSectorInfo();
      super.iniState();
    }

    @override
    Widget build(BuildContext context){
      return SafeArea(child: Scaffold(body: SfCircularChart(series: <CircularSeries>{PieSeries<RevDat, String>(
        dataSource: chartData,
        xValueMapper: (RevData data,_) => data.sector,
        yValueMapper: (RevDta data,_) => data.emission,
      )})))         // returns chart in usable area
    }
    
  }

  List<RevDat> getSectorInfo(){
    final List<RevDat> chartData = [
      RevDat("Retail", 555300),
      RevDat("Mining", 31630.54904),
      RevDat("Prof", 27277.33137),
      RevDat("Manu", 18244.88057),
      RevDat("Agri", 13238.0099 ),
      RevDat("TMT",18427.67367),
    ]
    return chartData
  }
}

class RevDat{
  RevDat(this.sector, this.emission);
  final String sector;
  final int emission;
}