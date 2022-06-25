import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_maps/maps.dart';

class Map extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SfMaps(
        layers: [
          MapShapeLayer(delegate: const MapShapeLayerDelegate(
            shapeFile: 'south-africa.json',
            shapeDataField: 'PROVINCE_NAME',
          ))
        ],
      ),
    );
  }
}
