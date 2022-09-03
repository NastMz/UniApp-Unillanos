import 'package:flutter/material.dart';
import 'package:uniapp/widgets/app_bar.dart';
import 'package:uniapp/widgets/feed_box.dart';

const avatarUrl =
    "https://scontent.fvvc3-1.fna.fbcdn.net/v/t1.18169-9/16711717_162028044300653_4865606214718814368_n.png?_nc_cat=106&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeE4u3W619NlYmMJMfrJjkvX5SYh_dNTnMLlJiH901Ocwhgog6LcikLQM2SU0tewqnSSxrhJJCqoL9yeqEYaldMM&_nc_ohc=8TtLI1Lea5wAX_uC1ZG&_nc_ht=scontent.fvvc3-1.fna&oh=00_AT8xSHqzzf6T7bGi8JPjPyt4ZtzUgNpQitcH5CfkIwJoPA&oe=632F7B44";

class News extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
          body: Column(children: [
        appBar(context),
        Expanded(
            child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(15.0),
          children: <Widget>[
            feedBox(avatarUrl, "Rutas Unillanos", "25/08/2022", "",
                "https://scontent.fbog16-2.fna.fbcdn.net/v/t39.30808-6/299858659_1432791927224252_1971046286326911776_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeHDfgj5lE0mUus3vhDIP8VdnUq2yT5XdoydSrbJPld2jLloy7Lc1SjnEbM9oUb-4ODbwuPs16PJK6BGPVSx8o5C&_nc_ohc=Z_pZ8nl7AHgAX8xklcP&_nc_ht=scontent.fbog16-2.fna&oh=00_AT_dBy0P_FMKDGoSZlwokn4TaYEUFYnV5g6idG-gwgLFuA&oe=6318A8D7"),
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
        ))
      ]));
}
