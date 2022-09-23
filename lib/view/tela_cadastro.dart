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
        body:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      Text(
        'Crie sua conta',
        style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(134, 134, 134, 1)),
      ),
      Form(
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
        )),
      ),
      ElevatedButton(
          style: ElevatedButton.styleFrom(
              minimumSize: Size(370, 65),
              primary: Color.fromRGBO(84, 51, 99, 1),
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
          Text('Já possui uma conta?'),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, 'telaLogin');
              },
              child: Text('Entrar'))
        ],
      )
    ]));
  }

  campoSenha(rotulo, variavel) {
    return Container(
        margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: TextFormField(
          obscureText: true,
          enableSuggestions: false,
          autocorrect: false,
          controller: variavel,
          style: TextStyle(fontSize: 20, color: Colors.blue.shade900),
          decoration: InputDecoration(
              labelText: rotulo,
              labelStyle: const TextStyle(fontSize: 20, color: Colors.grey),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
        ));
  }

  //
  // CAMPO DE TEXTO
  //
  campoTexto(rotulo, variavel) {
    return Container(
        margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: TextFormField(
          controller: variavel,
          style: TextStyle(fontSize: 20, color: Colors.blue.shade900),
          decoration: InputDecoration(
              labelText: rotulo,
              labelStyle: const TextStyle(fontSize: 20, color: Colors.grey),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
        ));
  }
}
