import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:uniapp/models/mapMarker.dart';
import 'package:uniapp/widgets/map.dart';

class Routes extends StatefulWidget {
  @override
  _RoutesState createState() => _RoutesState();
}

class _RoutesState extends State<Routes> {
  List<String> items = [
    'Porfia',
    'Viva',
    'Villacentro',
    'Grama-Postobon',
    'Terminal'
  ];
  String selectedItem = 'Porfia';
  var points = [porfiaPoints, vivaPoints];
  var markers = [porfiaMarkers, vivaMarkers];

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        elevation: 0,
        flexibleSpace: const FittedBox(
            fit: BoxFit.fill,
            child: Image(image: Svg('assets/images/svg/banner.svg'))),
        backgroundColor: Colors.transparent,
      ),
      body: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(children: <Widget>[
              DropdownButton<String>(
                value: selectedItem,
                items: items
                    .map((item) => DropdownMenuItem<String>(
                        value: item, child: Text(item)))
                    .toList(),
                onChanged: (item) => setState(() => selectedItem = item!),
                isExpanded: true,
              ),
              Expanded(
                  flex: 1,
                  child: Map(
                    key: ValueKey(selectedItem),
                    points: points[items.indexOf(selectedItem)],
                    mapMarkers: markers[items.indexOf(selectedItem)],
                  ))
            ]),
          )));
}
