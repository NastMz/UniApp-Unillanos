import 'package:flutter/material.dart';

class ImagePopup extends StatelessWidget {
  late String path;
  ImagePopup(this.path, Key? key) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Image.asset(path));
  }
}
