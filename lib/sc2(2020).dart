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
      RevDat("Retail",541450 ),
      RevDat("Mining", 239427.6),
      RevDat("Prof",280906.6 ),
      RevDat("Manu",93763.49),
      RevDat("Agri", 39601.77),
      RevDat("TMT",200670),
    ]
    return chartData
  }
}

class RevDat{
  RevDat(this.sector, this.emission);
  final String sector;
  final int emission;
}