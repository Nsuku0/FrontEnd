import 'package:flutter/material.dart';

class EmissionsInfo {
  final String name;
  final double? scope1_2020, scope2_2020, scope1_2021, scope2_2021;

  EmissionsInfo({
    required this.name,
    this.scope1_2020,
    this.scope2_2020,
    this.scope1_2021,
    this.scope2_2021,
  });
  String getName() {
    return this.name;
  }

  double? get_scope1_2020() {
    return this.scope1_2020;
  }

  double? get_scope2_2020() {
    return this.scope2_2020;
  }

  double? get_scope1_2021() {
    return this.scope1_2021;
  }

  double? get_scope2_2021() {
    return this.scope2_2021;
  }
}
