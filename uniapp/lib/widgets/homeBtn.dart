import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

import 'NavBar.dart';

Widget homeBtn(var context, int index, String text, String icon) {
  return ElevatedButton(
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => BNavigator(index: index)));
      },
      style: ElevatedButton.styleFrom(
          primary: Colors.white,
          onPrimary: Colors.black,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          textStyle:
              const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      child: Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 10.0),
          child: SizedBox(
              height: 100,
              width: 120,
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(text),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Image(
                      image: Svg(icon, size: const Size(50, 70)),
                    ),
                  )
                ],
              ))));
}
