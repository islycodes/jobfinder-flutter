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
          backgroundColor: Color.fromRGBO(78, 79, 249, 1),
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
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.grey),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 300,
                    height: 300,
                    child: Image.asset("lib/image/login-icon.png"),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Login',
                        style: TextStyle(
                          color: Color.fromRGBO(78, 79, 249, 1),
                          fontSize: 24,
                          fontFamily: "Open Sans",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
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
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text("Novo aqui?"),
                TextButton(
                    child: Text('Cadastre-se.'),
                    onPressed: () {
                      Navigator.pushNamed(context, 'telaCadastro');
                    })
              ])
            ],
          ),
        ),
      ),
    );
  }
}
