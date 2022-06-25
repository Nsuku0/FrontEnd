import 'package:charts_flutter/flutter.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'constants/constants.dart';


class MyApp extends StatefulWidget{

    const MyApp({Key? key}) : super(key: key);
    State createState() => App();
}

  class App extends State<MyApp>{
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
         ChartTitle(text:"Combined Scope 1 and 2 Emissions per Sector 2020" //returns titlte on piechart
              backgroundColor: Colors.white,
                  borderColor: Colors.white,
                  borderWidth: 2,
                  // Aligns the chart title to left
                  alignment: ChartAlignment.near,
                  textStyle: TextStyle(
                    color: oranges[3], //colour of title
                    fontFamily: 'Calibri',    // Sets title font
                    fontStyle: FontStyle.normal,
                    fontweight: FontWeight.bold, //Make Title bold
                    fontSize: 18,), // Size of title),  //returns titlte on piechart
         ),
    legend: 
         Legend(
          position: LegendPosition.right, // positioning of key
          isVisible: true, 
          isResponsive: true,
          overflowMode: LegendItemOverflowMode.wrap), //returns key/legend on piechart
        series: <CircularSeries>[
        PieSeries<RevDat, String>(
        dataSource: _chartData,
        xValueMapper: (RevDat data,_) => data.sector,
        yValueMapper: (RevDat data,_) => data.emission,
        dataLabelSettings: DataLabelSettings(isVisible: true))
      ])));         // returns chart in usable area
    }
    
  }

  List<RevDat> getSectorInfo(){
    final List<RevDat> chartData = [
      RevDat("Retail", 487172.33,ColorUtil.fromDartColor(pinks[1]) ),
      RevDat("Mining", 1049766.5,ColorUtil.fromDartColor(pinks[2])),
      //RevDat("Prof", 306420.2096,ColorUtil.fromDartColor(pinks[3]) ),
      RevDat("Manu", 74415.33, ColorUtil.fromDartColor(pinks[4])),
      RevDat("Agri", 130558.67,ColorUtil.fromDartColor(oranges[1]) ),
      RevDat("TMT", 386540.5, ColorUtil.fromDartColor(oranges[2])),
    ];
    return chartData;
  
}

class RevDat{
  RevDat(this.sector, this.emission, this.color);
  final String sector;
  final double emission;
  final Color color;
}