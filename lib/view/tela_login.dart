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
      backgroundColor: const Color(0xfffbf4ff),
      //CORPO
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment(-1, 6.123234262925839e-17),
              end: Alignment(6.123234262925839e-17, 1),
              colors: [
                Color.fromRGBO(234, 224, 241, 1),
                Color.fromRGBO(224, 236, 247, 1)
              ]),
        ),
        child: Padding(
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
                  campoTexto('Senha', txtSenha),
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
        controller: variavel,
        style: TextStyle(
          fontSize: 16,
          color: Colors.black,
        ),
        decoration: InputDecoration(
          labelText: rotulo,
          labelStyle: TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
    );
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
