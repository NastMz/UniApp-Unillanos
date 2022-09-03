import 'package:flutter/material.dart';
import 'package:uniapp/widgets/app_bar.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
          body: Column(children: [
        appBar(context),
        Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
            child: Center(
              child: Column(
                children: [
                  const Text(
                    'Politica de Privacidad',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.justify,
                  ),
                  const Text(""),
                  Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                    child: const Text(
                      'Kevin Santiago Martinez, Joshep Mateo Granada, Pablo Santiago Bobadilla Clavjo y Camilo Andres Tejeiro Roa crearón la aplicación UniApp Unillanos con el fin de informar a los estudiantes y demas interesados sobre las últimas novedades de la Universidad de los Llanos (Unillanos). Este SERVICIO es proporcionado por Kevin Santiago Martínez y Joshep Mateo Granada sin coste alguno y está destinado a su uso tal cual.',
                      style: TextStyle(fontSize: 14),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  const Text(""),
                  Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                    child: const Text(
                      'Esta página se utiliza para informar a los visitantes sobre las políticas de recopilación, uso y divulgación de información personal si alguien decide usar este Servicio.',
                      style: TextStyle(fontSize: 14),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  const Text(""),
                  Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                    child: const Text(
                      'Este Servicio recopila y hace uso de información proveniente delas páginas oficiliales de la red social Facebook de la Universidad de los Llanos y se utiliza para proporcionar y mejorar el Servicio',
                      style: TextStyle(fontSize: 14),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  const Text(""),
                  const Text(""),
                  const Text('Recopilación y uso de información',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const Text(""),
                  Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                    child: const Text(
                      'Este servicio no recopila ningun tipo de información de sus usuarios, ya que esta diseñada con el único fin de informar.',
                      style: TextStyle(fontSize: 14),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            ))
      ]));
}
