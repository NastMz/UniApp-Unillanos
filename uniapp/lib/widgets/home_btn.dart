import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

import 'bottom_bar.dart';

Widget homeBtn(var context, int index, String text, String icon) {
  return ElevatedButton(
      onPressed: () {
        Future.delayed(const Duration(milliseconds: 1000));
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => BNavigator(index: index)));
      },
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          padding: const EdgeInsets.only(top: 20, left: 20),
          elevation: 3.0,
          animationDuration: const Duration(milliseconds: 300),
          maximumSize: const Size(120, 100),
          enableFeedback: true),
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: <Widget>[
          Text(text,
              style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
          Positioned(
            bottom: -20,
            right: -20,
            child: Image(
              image: Svg(icon, size: const Size(90, 90)),
            ),
          )
        ],
      ));
}
