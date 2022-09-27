import 'package:flutter/material.dart';

import '../components/campoTexto.dart';

class TelaMenuInicial extends StatelessWidget {
  const TelaMenuInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.account_circle, size: 40, color: Colors.black),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Nome do usuário',
                            style:
                                TextStyle(fontSize: 18, color: Colors.black)),
                        Text('Curso do usuário - período',
                            style:
                                TextStyle(fontSize: 12, color: Colors.black)),
                      ],
                    ),
                  )
                ],
              ),
              Text('Encontre seu estágio',
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
              Row(
                children: [
                  Container(
                    color: Color.fromARGB(255, 8, 209, 8),
                    height: 74,
                    width: 268,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: campoTexto('rotulo', null),
                    ),
                  ),
                  Container(
                    height: 74,
                    width: 74,
                    color: Color.fromRGBO(84, 51, 99, 1),
                    child: Icon(Icons.settings_input_composite_outlined,
                        size: 40, color: Colors.white),
                  ),
                ],
              )
            ]),
      ),
    );
  }
}
