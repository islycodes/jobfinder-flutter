// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'inicial_widget.dart';

class TelaInicial extends StatelessWidget {
  const TelaInicial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xfffbf4ff),
        body: Column(children: [
          Row(
            children: [
              InicialWidget('image1.png'),
            ],
          ),

          //Título
          Container(
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Estagiotec',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(154, 151, 162, 10),
                  ),
                )
              ],
            ),
          ),

//Subtitulo
          Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Criado para alunos por alunos', style: TextStyle())
              ],
            ),
          ),

//Subtitulo
          Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Explore as melhores vagas baseadas\n'),
              ],
            ),
          ),

//Subtitulo
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('no seu interesse e área de estudo'),
            ],
          ),
        ]));
  }
}
