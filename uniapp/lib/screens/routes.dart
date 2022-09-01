import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:latlong2/latlong.dart';
import 'package:uniapp/api/api.dart';
import 'package:uniapp/models/map_marker.dart';
import 'package:uniapp/widgets/app_bar.dart';
import 'package:uniapp/widgets/map.dart';

class Routes extends StatefulWidget {
  @override
  _RoutesState createState() => _RoutesState();
}

class _RoutesState extends State<Routes> with WidgetsBindingObserver, API {
  late List<String> items;
  late String selectedItem;
  late Map<String, List<LatLng>> points;
  late Map<String, List<MapMarker>> markers;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    var stops = getStops();
    stops.then((value) {
      setState(() {
        items = value[0];
        points = value[1];
        markers = value[2];
        selectedItem = items[0];
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
          body: Stack(children: [
        appBar(context),
        Container(
            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1, bottom: 10),
            child: isLoading
                ? const SpinKitCircle(
                    color: Color(0xFFCB0303),
                    size: 100.0,
                  )
                : SizedBox(
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
                      ]),
                    )))
      ]));
}
