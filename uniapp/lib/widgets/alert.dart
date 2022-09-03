import 'package:flutter/material.dart';

Widget alertBox() {
  return Container(
    margin: const EdgeInsets.only(bottom: 20.0),
    width: double.infinity,
    child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
                child: Column(children: const [
              Text('!Oh vaya!',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600)),
              SizedBox(height: 5.0),
              Text('Parece que algo salio mal, por favor intentalo mas tarde',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w100))
            ])),
            const SizedBox(height: 10.0),
            const Icon(Icons.error, color: Color(0xFFCB0303)),
            const SizedBox(height: 10.0),
          ],
        )),
  );
}
