import 'constants/constants.dart';
import 'models/company_info_model.dart';
import 'package:flutter/services.dart' show ByteData, rootBundle;
import 'dart:io';
import 'package:path/path.dart' as p;
List<String> data = [];

void readFileByLines(){
  File file = new File('./assets/CompData.xlsx');
  List<String> lines = file.readAsLinesSync();
  data = lines.sublist(1,lines.length);
}

String getCompanyName(int idx) {
  return data[0;, idx];
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