import 'package:estagiotec/components/elevatedButtonGenerator.dart';
import 'package:flutter/material.dart';

import '../../../components/campoSenha.dart';
import '../../../components/campoTexto.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        extendBodyBehindAppBar: false,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          toolbarHeight: 80,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new, color: Colors.grey),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: EdgeInsets.all(30),
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
                                color: Color.fromRGBO(85, 97, 250, 1),
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
                      campoTexto(
                          'Digite seu email', txtEmail, Icons.alternate_email),
                      CampoSenha(
                          rotulo: 'Digite sua senha', variavel: txtSenha),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                              child: Text('Esqueceu sua senha?'),
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, 'telaEsqueceuSenha');
                              }),
                        ],
                      )
                    ]),
                    elevatedButtonGenerator(
                      context,
                      'Entrar',
                      'telaMenuInicial',
                    ),
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
          ),
        ));
  }
}
