import 'package:flutter/material.dart';

import '../../components/campoSenha.dart';
import '../../components/campoTexto.dart';

class TelaLogin extends StatefulWidget {
  const TelaLogin({Key? key}) : super(key: key);

  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  //Atributos
  var txtEmail = TextEditingController();
  var txtSenha = TextEditingController();

  //
  // BOTAO
  //
  botao(rotulo, pagina) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          minimumSize: Size(371, 66),
          backgroundColor: Color.fromRGBO(84, 51, 99, 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          )),
      //COMPORTAMENTO
      onPressed: () {
        Navigator.pushNamed(context, pagina);
      },
      //CONTEÚDO
      child: Text(
        rotulo,
        style: TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(251, 244, 255, 1),
      //CORPO
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Olá Novamente!',
                    style: TextStyle(
                      color: Color(0xff858585),
                      fontSize: 24,
                      fontFamily: "Open Sans",
                    ),
                  ),
                  Text('Seja bem vindo, entre para continuar.'),
                ],
              ),
              Column(children: [
                campoTexto('Digite seu email', txtEmail),
                campoSenha('Senha', txtSenha),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        child: Text('Redefinir sua senha'),
                        onPressed: () {
                          Navigator.pushNamed(context, 'redefinirSenha');
                        }),
                  ],
                )
              ]),
              botao('Entrar', 'MenuInicial'),
            ],
          ),
        ),
      ),
    );
  }
}
