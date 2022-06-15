import 'package:flutter/material.dart';

class CompInfo {
  final String? name, sector, iconSrc;
  final double? revenue, carbonEmissions;
  CompInfo({
    this.name,
    this.sector,
    this.iconSrc,
    this.revenue,
    this.carbonEmissions,
  });
}
