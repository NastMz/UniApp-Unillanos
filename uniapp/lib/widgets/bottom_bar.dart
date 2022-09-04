import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:uniapp/screens/about.dart';
import 'package:uniapp/screens/news.dart';
import 'package:uniapp/screens/routes.dart';

class BNavigator extends StatefulWidget {
  int index;

  BNavigator({Key? key, required this.index}) : super(key: key);

  @override
  _BNavigatorState createState() => _BNavigatorState();
}

class _BNavigatorState extends State<BNavigator> {
  late PageController _pageController;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: widget.index);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SizedBox.expand(
            child: PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: _pageController,
                onPageChanged: (index) {
                  if (index == 0) {
                    Navigator.pop(context);
                  } else {
                    setState(() => widget.index = index);
                  }
                },
                children: [
              Container(),
              Routes(),
              News(),
              const About(),
            ])),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color(0xfe961323),
          unselectedItemColor: const Color(0xff4d4d4d),
          currentIndex: widget.index,
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(
                icon: Image(
                  width: 32,
                  height: 32,
                  image: Svg('asset/images/svg/home_icon_bw.svg'),
                ),
                activeIcon: Image(
                  width: 32,
                  height: 32,
                  image: Svg('asset/images/svg/home_icon.svg'),
                ),
                label: "Inicio"),
            BottomNavigationBarItem(
                icon: Image(
                  width: 32,
                  height: 32,
                  image: Svg('asset/images/svg/location_icon_bw.svg'),
                ),
                activeIcon: Image(
                  width: 32,
                  height: 32,
                  image: Svg('asset/images/svg/location_icon.svg'),
                ),
                label: "Rutas"),
            BottomNavigationBarItem(
                icon: Image(
                  width: 32,
                  height: 32,
                  image: Svg('asset/images/svg/news_icon_bw.svg'),
                ),
                activeIcon: Image(
                  width: 32,
                  height: 32,
                  image: Svg('asset/images/svg/news_icon.svg'),
                ),
                label: "Novedades"),
            BottomNavigationBarItem(
                icon: Image(
                  width: 32,
                  height: 32,
                  image: Svg('asset/images/svg/about_icon_bw.svg'),
                ),
                activeIcon: Image(
                  width: 32,
                  height: 32,
                  image: Svg('asset/images/svg/about_icon.svg'),
                ),
                label: "Acerca de")
          ],
          selectedLabelStyle: const TextStyle(
            overflow: TextOverflow.visible,
          ),
        ),
      );

  void _onItemTapped(int index) {
    if (index == 0) {
      Navigator.pop(context);
    } else {
      setState(() {
        widget.index = index;
        //
        //
        //using this page controller you can make beautiful animation effects
        _pageController.animateToPage(index,
            duration: const Duration(milliseconds: 500), curve: Curves.easeOut);
      });
    }
  }
}
