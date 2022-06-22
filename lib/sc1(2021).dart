import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';


class MyApp extends StatelessWidget{

  
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
                series: <CircularSeries>[
                  PieSeries<RevDat, String>(
                  dataSource: chartData,
                  xValueMapper: (RevDat data,_) => data.sector,
                  yValueMapper: (RevDat data,_) => data.emission,
      )])))         // returns chart in usable area
    }
    
  }

  List<RevDat> getSectorInfo(){
    final List<RevDat> chartData = [
      RevDat("Retail", 531530),
      RevDat("Mining", 31800.3871),
      RevDat("Prof", 28020.30315),
      RevDat("Manu", 20045.38777),
      RevDat("Agri", 10894.16791),
      RevDat("TMT", 23530.21333),
    ];
    return chartData;
  
}

class RevDat{
  RevDat(this.sector, this.emission);
  final String sector;
  final double emission;
}