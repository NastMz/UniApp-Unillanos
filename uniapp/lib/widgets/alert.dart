import 'package:flutter/material.dart';

Widget alertBox({required String message}) {
  return Stack(fit: StackFit.expand, children: [
    Padding(
        padding: const EdgeInsets.all(20),
        child: Align(
            alignment: Alignment.center,
            child: Column(children: [
              const SizedBox(height: 50.0),
              const Icon(Icons.error, color: Color(0xFFCB0303), size: 50),
              const SizedBox(height: 10.0),
              const Text('!Oh vaya!',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22.0,
                      fontWeight: FontWeight.w600)),
              const SizedBox(height: 10.0),
              Text(
                message,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w100,
                ),
                textAlign: TextAlign.center,
              )
            ])))
  ]);
}
