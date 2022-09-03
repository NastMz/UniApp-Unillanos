import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadWidget extends StatelessWidget {
  String message;

  LoadWidget({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: const EdgeInsets.all(20),
            child: Align(
                alignment: Alignment.center,
                child: Column(children: [
                  Text(
                    message,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(height: 10),
                  const SpinKitCircle(
                    color: Color(0xFFCB0303),
                    size: 100.0,
                  )
                ]))));
  }
}
