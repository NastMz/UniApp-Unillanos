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
              const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5.0),
          child: SizedBox(
              height: 100,
              width: 130,
              child: Expanded(
                  flex: 2,
                  child: Row(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(text),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Image(
                          image: Svg(icon),
                          width: 50,
                        ),
                      )
                    ],
                  )))));
}
