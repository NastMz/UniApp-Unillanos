import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:uniapp/screens/About.dart';
import 'package:uniapp/screens/Home.dart';
import 'package:uniapp/screens/News.dart';
import 'package:uniapp/screens/routes.dart';

class BNavigator extends StatefulWidget {
  const BNavigator({Key? key}) : super(key: key);

  @override
  _BNavigatorState createState() => _BNavigatorState();
}

class _BNavigatorState extends State<BNavigator> {
  int index = 0;

  List screens = [
    Home(),
    Routes(),
    News(),
    About(),

    
    // Center(child: Text('Inicio', style: TextStyle(fontSize: 60))),
    // Center(child: Text('Rutas', style: TextStyle(fontSize: 60))),
    // Center(child: Text('Novedades', style: TextStyle(fontSize: 60))),
    // Center(child: Text('Acerca de', style: TextStyle(fontSize: 60))),
    
  ];

@override
  Widget build(BuildContext context) => Scaffold( 
      body: screens[index], 
      bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: const Color(0xfe961323),
      unselectedItemColor: const Color(0xff4d4d4d),
      currentIndex: index,
      onTap: (int i) {
        setState(() {
          index = i;
        });
      },
      items:
      const [
        BottomNavigationBarItem(
            icon: Image(
              width: 32,
              height: 32,
              image: Svg('assets/images/svg/home_icon_bw.svg'),
            ),
            activeIcon: Image(
              width: 32,
              height: 32,
              image: Svg('assets/images/svg/home_icon.svg'),
            ),
            label: "Inicio"),
        BottomNavigationBarItem(
            icon: Image(
              width: 32,
              height: 32,
              image: Svg('assets/images/svg/location_icon_bw.svg'),
            ),
            activeIcon: Image(
              width: 32,
              height: 32,
              image: Svg('assets/images/svg/location_icon.svg'),
            ),
            label: "Rutas"),
        BottomNavigationBarItem(
            icon: Image(
              width: 32,
              height: 32,
              image: Svg('assets/images/svg/news_icon_bw.svg'),
            ),
            activeIcon: Image(
              width: 32,
              height: 32,
              image: Svg('assets/images/svg/news_icon.svg'),
            ),
            label: "Novedades"),
        BottomNavigationBarItem(
            icon: Image(
              width: 32,
              height: 32,
              image: Svg('assets/images/svg/about_icon_bw.svg'),
            ),
            activeIcon: Image(
              width: 32,
              height: 32,
              image: Svg('assets/images/svg/about_icon.svg'),
            ),
            label: "Acerca de")
      ],
      selectedLabelStyle: const TextStyle(
        overflow: TextOverflow.visible,
      ),
    ),
  );
}
