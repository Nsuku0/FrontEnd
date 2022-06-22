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
      RevDat("Retail", 515617.5),
      RevDat("Mining", 370417.5845),
      RevDat("Prof", 306420.2096),
      RevDat("Manu", 89122.59289),
      RevDat("Agri", 35777.33616),
      RevDat("TMT", 206355.5005),
    ]
    return chartData
  }
}

class RevDat{
  RevDat(this.sector, this.emission);
  final String sector;
  final int emission;
}