import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:uniapp/widgets/NavBar.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          toolbarHeight: 200,
          title: SizedBox(
              height: 50,
              child: Row(
                children: const <Widget>[
                  Text("UniApp Unillanos"),
                  Spacer(), // use Spacer
                  Image(image: Svg('assets/images/svg/logo.svg'))
                ],
              )),
          elevation: 0,
          flexibleSpace: const FittedBox(
              fit: BoxFit.cover,
              child: Image(image: Svg('assets/images/svg/banner.svg'))),
          backgroundColor: Colors.transparent,
        ),
        body: Center(child: Text("Home")),
      );
}
