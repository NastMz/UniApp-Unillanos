import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:uniapp/widgets/map.dart';

class Routes extends StatefulWidget {
  @override
  _RoutesState createState() => _RoutesState();
}

class _RoutesState extends State<Routes> {
  List<String> items = ['Porfia', 'Viva', 'Villacentro', 'Grama-Postobon', 'Terminal'];
  String selectedItem = 'Porfia';
  List startPoint = [
    {'lat': 4.0593938, 'long': -73.6700653},
    {'lat': 4.125370, 'long': -73.636071},
    {'lat': 4.1331923, 'long': -73.6366531},
    {'lat': 4.158367, 'long':  -73.640998},
    {'lat': 4.148175, 'long': -73.624406}
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        elevation: 0,
        flexibleSpace: const FittedBox(
            fit: BoxFit.fill,
            child: Image(image: Svg('assets/images/svg/banner.svg'))),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
          margin: const EdgeInsets.only(bottom: 8.0),
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
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
              SizedBox(
                  width: double.infinity,
                  height: 500,
                  child: map(startPoint[items.indexOf(selectedItem)]['lat'],
                      startPoint[items.indexOf(selectedItem)]['long']))
            ]),
          )));
}
