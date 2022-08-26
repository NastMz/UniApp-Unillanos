import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:uniapp/widgets/feedBox.dart';

const avatarUrl =
    "https://repositorio.unillanos.edu.co/bitstream/id/30fd0dec-cf21-42ed-a9a6-dc98e0cec2e6/1.png?sequence=-1";

class News extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        elevation: 0,
        flexibleSpace: const FittedBox(
            fit: BoxFit.fill,
            child: Image(image: Svg('assets/images/svg/banner.svg'))),
        backgroundColor: Colors.transparent,
      ),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(15.0),
        children: <Widget>[
          feedBox(
              avatarUrl,
              "Rutas Unillanos",
              "25/08/2022",
              "",
              "https://scontent.fvvc2-1.fna.fbcdn.net/v/t39.30808-6/299858659_1432791927224252_1971046286326911776_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeHDfgj5lE0mUus3vhDIP8VdnUq2yT5XdoydSrbJPld2jLloy7Lc1SjnEbM9oUb-4ODbwuPs16PJK6BGPVSx8o5C&_nc_ohc=YTvA38Orb6cAX_oLgkr&_nc_ht=scontent.fvvc2-1.fna&oh=00_AT8-Vb3poZzTWYyV9NyyXRzFVypJZxutFUpb-bCipGCpFA&oe=630CCB57"),
          feedBox(
              avatarUrl,
              "Rutas Unillanos",
              "24/08/2022",
              "Se le informa a los estudiantes que las rutas en los horarios de 11:00 y 12:00 están demoradas por accidente en la vía",
              ""),
          feedBox(
              avatarUrl,
              "Rutas Unillanos",
              "22/08/2022",
              "Se le informa a los estudiantes que salen al paradero de serramonte que deben subir hasta el paradero de catumare por cierre en la via",
              ""),
          feedBox(
              avatarUrl,
              "Rutas Unillanos",
              "17/08/2022",
              "Se le informa a los estudiantes que se normalizó todo el transporte",
              ""),
        ],
      ));
}
