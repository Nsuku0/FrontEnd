import 'package:charts_flutter/flutter.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'constants/constants.dart';


class MyApp extends StatefulWidget{

    const MyApp({Key? key}) : super(key: key);
    State createState() => App();
}
    class App extends State<MyApp> {
    late List<RevDat> _chartData;  // initializes chart data field

    @override
    void initState(){
      _chartData = getSectorInfo();
      super.initState();
    }
    
    
    
    @override
    Widget build(BuildContext context){
      return SafeArea(
          child: Scaffold(
              body: SfCircularChart(
       title: 
              const Text('2020 Scope 1 - Average Emissions Per Sector'),  //returns titlte on piechart
              backgroundColor: Colors.white,
                  borderColor: Colors.white,
                  borderWidth: 2,
                  // Aligns the chart title to left
                  alignment: ChartAlignment.near,
                  textStyle: TextStyle(
                    color: oranges[3],
                    fontFamily: '',
                    fontStyle: FontStyle.italic,
                    fontSize: 14,),
       legend: 
              Legend(isVisible: true, overflowMode: LegendItemOverflowMode.wrap), //returns key/legend on piechart
                series: <CircularSeries>[
                  PieSeries<RevDat, String>(
                  dataSource: _chartData,
                  xValueMapper: (RevDat data,_) => data.sector,
                  yValueMapper: (RevDat data,_) => data.emission,
      )])));        // returns chart in usable area
    }
    
  //}

  List<RevDat> getSectorInfo(){
    final List<RevDat> chartData = [
      RevDat("Retail", 531530, ColorUtil.fromDartColor(pinks[1]) ),
      RevDat("Mining", 31800.3871, ColorUtil.fromDartColor(pinks[1])),
      RevDat("Prof", 28020.30315, ColorUtil.fromDartColor(pinks[1])),
      RevDat("Manu", 20045.38777, ColorUtil.fromDartColor(pinks[1])),
      RevDat("Agri", 10894.16791, ColorUtil.fromDartColor(pinks[1])),
      RevDat("TMT", 23530.21333, ColorUtil.fromDartColor(pinks[1])),
    ];
    return chartData;
  
}
}

class RevDat{
  RevDat(this.sector, this.emission, this.color);
  final String sector;
  final double emission;
  final Color color; //variable to allow specifiation of colour
}