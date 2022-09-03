import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:uniapp/widgets/home_btn.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return Scaffold(
      body: Stack(children: [
        Container(
          padding:
              EdgeInsets.only(top: size.height * 0.035, left: 20, right: 30),
          height: size.height * 0.3,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: Svg('asset/images/svg/banner.svg'),
                  fit: BoxFit.cover)),
          child: Row(
            children: const [
              Text(
                'UniApp - Unillanos',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Spacer(),
              SizedBox(
                  height: 50,
                  child: Image(image: Svg('asset/images/svg/logo.svg')))
            ],
          ),
        ),
        SafeArea(
            child: Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, bottom: 10),
                child: Column(children: [
                  Expanded(
                      child: Container(
                          margin: EdgeInsets.only(top: size.height * 0.3),
                          child: GridView.count(
                              mainAxisSpacing: 30.0,
                              crossAxisSpacing: 30.0,
                              crossAxisCount: isLandscape ? 3 : 2,
                              children: [
                                homeBtn(context, 1, 'Rutas',
                                    'asset/images/svg/location_icon.svg'),
                                homeBtn(context, 2, 'Novedades',
                                    'asset/images/svg/news_icon.svg'),
                                homeBtn(context, 3, 'Acerca de',
                                    'asset/images/svg/about_icon.svg'),
                              ]))),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(children: const [
                      Text("@2022 UniApp Unillanos"),
                      Text("Proyecto Ingeniería de Software II"),
                      Text(
                          "Kevin Santiago Martinez, Joshep Mateo Granada, Camilo Andres Tejeiro, Pablo Santiago Bobadilla",
                          textAlign: TextAlign.center),
                    ]),
                  )
                ]))),
      ]),
    );
  }
}
