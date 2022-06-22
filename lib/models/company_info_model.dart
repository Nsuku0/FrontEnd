import 'package:absa_cib_ecg_dashboard/models/revenue_model.dart';
import 'package:flutter/material.dart';

class CompInfo {
  final String? name, sector, iconSrc;
  final double? rev2021,
      rev2020,
      scope1_2021,
      scope2_2021,
      scope1_2020,
      scope2_2020;
  CompInfo({
    this.name,
    this.sector,
    this.iconSrc,
    this.rev2021,
    this.rev2020,
    this.scope1_2021,
    this.scope2_2021,
    this.scope1_2020,
    this.scope2_2020,
  });

  RevenueInfo getRev() {
    return RevenueInfo(
        iconSrc: this.iconSrc,
        name: this.name,
        rev2020: this.rev2020,
        rev2021: this.rev2021);
  }
}
