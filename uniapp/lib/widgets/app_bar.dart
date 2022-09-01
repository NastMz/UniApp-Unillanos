import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

Widget appBar(context) {
  var size = MediaQuery.of(context).size;
  return Container(
    height: size.height * 0.1,
    decoration: const BoxDecoration(
        image: DecorationImage(
            image: Svg('asset/images/svg/banner.svg'), fit: BoxFit.cover)),
  );
}
