// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

class TelaInicial extends StatelessWidget {
  const TelaInicial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xfffbf4ff),
        body:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          //Título
          Column(
            children: [
              Text(
                'Estagiotec',
                style: TextStyle(
                  fontSize: 64,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(84, 51, 99, 1),
                ),
              ),
              Text('Criado para alunos por alunos',
                  style: TextStyle(
                    fontSize: 18,
                  ))
            ],
          ),

//Subtitulo
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  'Explore as melhores vagas baseadas\n baseada na sua área de interesse.')
            ],
          ),

//botões
          Row(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(147, 50),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    )),
                onPressed: () {},
                child: // botao cadastrar
                    Container(
                        width: 157,
                        height: 70,
                        child: Stack(children: <Widget>[
                          Positioned(
                              top: 24,
                              left: 39,
                              child: Text(
                                'Cadastrar',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontFamily: 'Open Sans',
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    height: 1),
                              )),
                        ])),
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: // Botão entrar
                      Container(
                          width: 157,
                          height: 70,
                          child: Stack(children: <Widget>[
                            Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                    width: 157,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(16),
                                        topRight: Radius.circular(16),
                                        bottomLeft: Radius.circular(16),
                                        bottomRight: Radius.circular(16),
                                      ),
                                      color: Color.fromRGBO(246, 244, 247, 1),
                                      border: Border.all(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        width: 1,
                                      ),
                                    ))),
                            Positioned(
                                top: 24,
                                left: 57,
                                child: Text(
                                  'Entrar',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                      fontFamily: 'Open Sans',
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                )),
                          ])))
            ],
          )
        ]));
  }
}
