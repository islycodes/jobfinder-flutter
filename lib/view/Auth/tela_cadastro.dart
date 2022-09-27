import 'package:flutter/material.dart';

import '../../components/campoSenha.dart';
import '../../components/campoTexto.dart';

class TelaCadastro extends StatefulWidget {
  const TelaCadastro({Key? key}) : super(key: key);

  @override
  State<TelaCadastro> createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> {
  var txtNome = TextEditingController();
  var txtEmail = TextEditingController();
  var txtSenha = TextEditingController();

  bool valCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(251, 244, 255, 1),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Text(
          'Crie sua conta',
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(134, 134, 134, 1)),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: Form(
              child: (Column(
            children: [
              campoTexto('Nome', txtNome),
              campoTexto('Email', txtEmail),
              campoSenha('Senha', txtSenha),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                      value: valCheck,
                      onChanged: (bool? value) {
                        setState(() {
                          valCheck = value!;
                        });
                      }),
                  Text('Declaro que li e aceito os termos & condições'),
                ],
              ),
            ],
          ))),
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                minimumSize: Size(370, 65),
                backgroundColor: Color.fromRGBO(84, 51, 99, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                )),
            onPressed: () {
              Navigator.pushNamed(context, 'telaLogin');
            },
            child: Text(
              'Cadastrar',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ) // botao cadastrar
            ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Já possui uma conta?'),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'telaLogin');
                },
                child: Text('Entrar'))
          ],
        )
      ]),
    );
  }
}
