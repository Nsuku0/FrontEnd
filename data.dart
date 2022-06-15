import 'package:FrontEnd/constants.dart';
import 'package:FrontEnd/models/company_info_model.dart';
import 'package:excel/excel.dart';
import 'package:flutter/services.dart' show ByteData, rootBundle;

void readExcelFile() {
  ByteData data = await rootBundle.load("assets/companyData.xlsx");
  var bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
  var excel = Excel.decodeBytes(bytes);
  int j =0;
  int row = 18;
  int col = 2;
  var listVar = List.generate(row, (i) => List(col), growable:false);
  for (var table in excel.tables.keys) {
    //TODO: add excel code
  }
}


List companyData = [
  CompInfo (
    name: 'C1',
    sector: 'x',
    iconSrc: 'assets/C1.png',
    revenue: 89384.93,
    carbonEmissions: 288373.0339,
  )
]