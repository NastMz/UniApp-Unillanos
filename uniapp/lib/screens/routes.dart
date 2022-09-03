import 'dart:core';

import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import 'package:uniapp/api/api.dart';
import 'package:uniapp/models/map_marker.dart';
import 'package:uniapp/widgets/alert.dart';
import 'package:uniapp/widgets/app_bar.dart';
import 'package:uniapp/widgets/loader.dart';
import 'package:uniapp/widgets/map.dart';

class Routes extends StatefulWidget {
  @override
  _RoutesState createState() => _RoutesState();
}

class _RoutesState extends State<Routes> with WidgetsBindingObserver, API {
  List<String> items = [];
  String selectedItem = '';
  Map<String, List<LatLng>> points = {};
  Map<String, List<MapMarker>> markers = {};
  bool isLoading = true;
  String alertMessage = '';

  @override
  void initState() {
    super.initState();
    var stops = getStops();
    stops.then((value) {
      setState(() {
        if (value.runtimeType != String) {
          items = value[0];
          points = value[1];
          markers = value[2];
          selectedItem = items[0];
        } else {
          alertMessage = value;
        }
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
          body: Column(children: [
        appBar(context),
        isLoading
            ? LoadWidget(message: 'Cargando el mapa, por favor espere')
            : Expanded(
                child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: markers.isNotEmpty
                        ? SizedBox(
                            width: double.infinity,
                            child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 25.0, right: 25.0, bottom: 25.0),
                                child: Column(children: <Widget>[
                                  DropdownButton<String>(
                                    value: selectedItem,
                                    items: items
                                        .map((item) => DropdownMenuItem<String>(
                                            value: item, child: Text(item)))
                                        .toList(),
                                    onChanged: (item) =>
                                        setState(() => selectedItem = item!),
                                    isExpanded: true,
                                  ),
                                  const SizedBox(height: 10),
                                  Expanded(
                                      flex: 1,
                                      child: MapWidget(
                                        key: ValueKey(selectedItem),
                                        points: points[selectedItem]!,
                                        mapMarkers: markers[selectedItem]!,
                                      ))
                                ])))
                        : alertBox(message: alertMessage)))
      ]));
}
