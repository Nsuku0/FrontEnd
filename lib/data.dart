import '/models/company_info_model.dart';
import 'package:flutter/services.dart' show ByteData, rootBundle;
import 'dart:core';
import 'package:path/path.dart' as p;

import 'package:excel/excel.dart';

List<CompInfo> companies = [];

ByteData? data = rootBundle.load("assets/CompanyData.xlsx") as ByteData?;
var bytes = data!.buffer.asUint8List(data!.offsetInBytes, data?.lengthInBytes);
var excel = Excel.decodeBytes(bytes);
read() {
  for (var table in excel.tables.keys) {
    var c;
    for (var row in excel.tables[table]!.rows) {
      // ignore: avoid_print
      companies.add(CompInfo(
        name: row[0],
        sector: row[1],
        scope1_2021: row[2],
        scope2_2021: row[3],
        rev_2021: row[4],
        scope1_2020: row[5],
        scope2_2020: row[6],
        rev2020: row[7],
        iconSrc: row[8],
      ));
    }
  }
}
