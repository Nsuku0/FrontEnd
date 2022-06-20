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
        yValueMapper: (RevDta data,_) => data.revenue,
      )})))         // returns chart in usable area
    }
    
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
    return chartData
  }
}

class RevDat{
  RevDat(this.sector, this.revenue);
  final String sector;
  final int revenue;
}