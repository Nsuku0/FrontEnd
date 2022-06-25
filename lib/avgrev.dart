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
              ChartTitle(text:"Average Revenue Per Sector",
              backgroundColor: Colors.white,
                  borderColor: Colors.white,
                  //borderWidth: 2,
                  // Aligns the chart title to left
                  alignment: ChartAlignment.near,
                  textStyle: TextStyle(
                    color: oranges[3], //colour of title
                    fontFamily: 'Calibri',    // Sets title font
                    fontStyle: FontStyle.normal,
                    fontweight: FontWeight.bold, //Make Title bold
                    fontSize: 18,), // Size of title
              ),  //returns titlte on piechart
      legend: 
              Legend(
              position:LegendPosition.right, // positioning of key  
              isVisible: true, 
              isResponsive: true, ///makes key interactive
              overflowMode: LegendItemOverflowMode.wrap), //returns key/legend on piechart  
            series: <CircularSeries>[ 
              PieSeries<RevDat, String>(
              dataSource: _chartData,
              xValueMapper: (RevDat data,_) => data.sector,
              yValueMapper: (RevDat data,_) => data.revenue,
              )
      ])));        // returns chart in usable area
    }
    
  

  List<RevDat> getSectorInfo(){
    final List<RevDat> chartData = [
      RevDat("Retail",123472.9, ColorUtil.fromDartColor(pinks[1])),
      RevDat("Mining", 262915,ColorUtil.fromDartColor(pinks[2]) ),
      RevDat("Prof",95156.5, ColorUtil.fromDartColor(pinks[3]) ),
      RevDat("Manu",81221.76,ColorUtil.fromDartColor(pinks[4]) ),
      RevDat("Agri", 72134.04,ColorUtil.fromDartColor(oranges[1])),
      RevDat("TMT",45733.32,ColorUtil.fromDartColor(oranges[2])),
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