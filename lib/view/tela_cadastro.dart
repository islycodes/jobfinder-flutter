import 'package:flutter/material.dart';

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
            onPressed: () {},
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
            Text('Já possui uma conta? '),
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
}
