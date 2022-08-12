import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "UniApp Unillanos",
        home: Scaffold(
            appBar: PreferredSize(
                preferredSize: const Size.fromHeight(100.0),
                child: AppBar(
                  flexibleSpace: FittedBox(
                    fit: BoxFit.cover,
                    child: SvgPicture.asset('assets/images/svg/header.svg'),
                  ),
                  backgroundColor: Colors.transparent,
                )),
            body: const Center(
              child: Text("Home",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 36)),
            )));
  }
}
