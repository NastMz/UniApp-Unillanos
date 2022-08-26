import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

import '../widgets/homeBtn.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
        body: Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(children: <Widget>[
                  homeBtn(context, 1, 'Rutas',
                      'assets/images/svg/location_icon.svg'),
                  const SizedBox(height: 20),
                  homeBtn(context, 3, 'Acerca de',
                      'assets/images/svg/about_icon.svg'),
                ]),
                const SizedBox(width: 10),
                Column(children: <Widget>[
                  homeBtn(context, 2, 'Novedades',
                      'assets/images/svg/news_icon.svg'),
                ]),
              ],
            ),
            const Expanded(flex: 2, child: FittedBox(fit: BoxFit.cover)),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(children: const [
                Text("@2022 UniApp Unillanos"),
                Text("Proyecto Ingeniería de Software II"),
                Text("Kevin Santiago Martinez, Joshep Mateo Granada"),
                Text("Camilo Andres Tejeiro, Pablo Santiago Bobadilla"),
              ]),
            )
          ]),
        ),
      );
}
