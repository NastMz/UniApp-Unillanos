import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

Widget map(centerLat, centerLong) {
  return FlutterMap(
    options: MapOptions(
      center: LatLng(centerLat, centerLong),
      zoom: 20,
    ),
    layers: [
      TileLayerOptions(
        urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
        userAgentPackageName: 'com.example.app',
      ),
    ]
  );
}