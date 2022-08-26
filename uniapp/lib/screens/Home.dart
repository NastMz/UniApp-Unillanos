import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:uniapp/screens/News.dart';
import 'package:uniapp/widgets/NavBar.dart';

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
          margin: const EdgeInsets.symmetric(vertical: 100, horizontal: 0),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BNavigator(index: 2)));
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          textStyle: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold)),
                      child: Row(
                        children: <Widget>[
                          Column(
                            children: const [
                              Text('Novedades   '),
                            ],
                          ),
                          Column(
                            children: const [
                              SizedBox(
                                height: 50,
                              ),
                              Image(
                                image: Svg('assets/images/svg/news_icon.svg'),
                                width: 50,
                              ),
                            ],
                          )
                        ],
                      )),
                  const SizedBox(height: 20),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BNavigator(index: 3)));
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          textStyle: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold)),
                      child: Row(
                        children: <Widget>[
                          Column(
                            children: const [
                              SizedBox(
                                height: 0,
                              ),
                              Text('Acerca de   '),
                            ],
                          ),
                          Column(
                            children: const [
                              SizedBox(
                                height: 50,
                              ),
                              Image(
                                image: Svg('assets/images/svg/about_icon.svg'),
                                width: 50,
                              ),
                            ],
                          )
                        ],
                      )),
                ]),
                const SizedBox(width: 10),
                Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BNavigator(index: 1)));
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          textStyle: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold)),
                      child: Row(
                        children: <Widget>[
                          Column(
                            children: const [
                              SizedBox(
                                height: 0,
                              ),
                              Text('Rutas          '),
                            ],
                          ),
                          Column(
                            children: const [
                              SizedBox(
                                height: 50,
                              ),
                              Image(
                                image:
                                    Svg('assets/images/svg/location_icon.svg'),
                                width: 50,
                              ),
                            ],
                          )
                        ],
                      )),
                  const SizedBox(height: 77.5),
                ]),
              ],
            ),
            Expanded(
                child: Center(
              child: Column(children: const [
                Text("@2022 UniApp Unillanos"),
                Text("Proyecto Ingeniería de Software II"),
                Text("Kevin Santiago Martinez, Joshep Mateo Granada"),
                Text("Camilo Andres Tejeiro, Pablo Santiago Bobadilla"),
              ]),
            )),
          ]),
        ),
      );
}
