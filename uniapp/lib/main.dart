import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:uniapp/widgets/NavBar.dart';

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
          body: Stack(
            children: const <Widget>[
              Center(
                child: Text("Home"),
              )
            ],
          ),
          bottomNavigationBar: const BNavigator()
        ));
  }
}
