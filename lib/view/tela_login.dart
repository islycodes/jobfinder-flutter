import 'package:flutter/material.dart';

class TelaLogin extends StatefulWidget {
  const TelaLogin({Key? key}) : super(key: key);

  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  //Atributos
  var txtEmail = TextEditingController();
  var txtSenha = TextEditingController();

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
                  Text('Seja bem vindo, entre para continuar!'),
                ],
              ),
              Column(children: [
                campoTexto('Digite seu email', txtEmail),
                campoSenha('Senha', txtSenha),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        child: Text('Redefinir sua senha'), onPressed: () {}),
                  ],
                )
              ]),
              botao('Entrar'),
            ],
          ),
        ),
      ),
    );
  }

  //
  // CAMPO DE TEXTO
  //
  campoTexto(rotulo, variavel) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: TextFormField(
        cursorColor: Color.fromRGBO(84, 51, 99, 1),
        controller: variavel,
        style: TextStyle(
          fontSize: 16,
          color: Colors.black,
        ),
        decoration: new InputDecoration(
          floatingLabelStyle: TextStyle(color: Color.fromRGBO(84, 51, 99, 1)),
          labelText: rotulo,
          fillColor: Colors.white,
          enabledBorder: new OutlineInputBorder(
            borderRadius: new BorderRadius.circular(16),
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: new OutlineInputBorder(
            borderRadius: new BorderRadius.circular(16),
            borderSide: BorderSide(color: Color.fromRGBO(84, 51, 99, 1)),
          ),
        ),
      ),
    );
  }

  campoSenha(rotulo, variavel) {
    return Container(
        margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: TextFormField(
            cursorColor: Color.fromRGBO(84, 51, 99, 1),
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
            controller: variavel,
            style: TextStyle(fontSize: 16, color: Colors.black),
            decoration: new InputDecoration(
              floatingLabelStyle:
                  TextStyle(color: Color.fromRGBO(84, 51, 99, 1)),
              labelText: rotulo,
              fillColor: Colors.white,
              enabledBorder: new OutlineInputBorder(
                borderRadius: new BorderRadius.circular(16),
                borderSide: BorderSide(color: Colors.grey),
              ),
              focusedBorder: new OutlineInputBorder(
                borderRadius: new BorderRadius.circular(16),
                borderSide: BorderSide(color: Color.fromRGBO(84, 51, 99, 1)),
              ),
            )));
  }

  //
  // BOTAO
  //
  botao(rotulo) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          minimumSize: Size(371, 66),
          backgroundColor: Color.fromRGBO(84, 51, 99, 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          )),
      //COMPORTAMENTO
      onPressed: () {},
      //CONTEÚDO
      child: Text(
        rotulo,
        style: TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }
}
