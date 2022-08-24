import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class About extends StatelessWidget {

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
          elevation: 0,
          flexibleSpace: const FittedBox(
              fit: BoxFit.fill,
              child: Image(image: Svg('assets/images/svg/banner.svg'))),
          backgroundColor: Colors.transparent,
        ),
    body: Center(child: Text('Acerca de nosotros', style: TextStyle(fontSize: 60))),
  );
}