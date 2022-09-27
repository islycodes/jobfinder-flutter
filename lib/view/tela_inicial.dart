// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

class TelaInicial extends StatelessWidget {
  const TelaInicial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          //Título
          Column(
            children: [
              Text(
                'Estagiotec',
                style: TextStyle(
                  fontSize: 64,
                  color: Color.fromRGBO(78, 79, 249, 1),
                  fontWeight: FontWeight.w900,
                  fontFamily: 'NotoSansDisplay',
                ),
              ),
              Text('Criado para alunos por alunos',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'OpenSans',
                    fontWeight: FontWeight.w400,
                  ))
            ],
          ),

          //Subtitulo
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                  'Explore as melhores vagas baseadas\n baseada na sua área de interesse.',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'OpenSans',
                    fontWeight: FontWeight.w400,
                  ))
            ],
          ),

          //botões
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(157, 70),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    )),
                onPressed: () {
                  Navigator.pushNamed(context, 'telaCadastro');
                },
                child: Text(
                  'Cadastrar',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontFamily: 'OpenSans',
                  ),
                ) // botao cadastrar
                ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(157, 70),
                    backgroundColor: Color.fromRGBO(78, 79, 249, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    )),
                onPressed: () {
                  Navigator.pushNamed(context, 'telaLogin');
                },
                child: Text(
                  'Entrar',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontFamily: 'OpenSans'),
                )),
          ])
        ]));
  }
}
