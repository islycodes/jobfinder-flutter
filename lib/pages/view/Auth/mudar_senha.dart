import 'package:flutter/material.dart';

import '../../../components/campoSenha.dart';
import '../../../components/elevatedButtonGenerator.dart';

class TelaMudarSenha extends StatefulWidget {
  const TelaMudarSenha({super.key});

  @override
  State<TelaMudarSenha> createState() => _TelaMudarSenhaState();
}

class _TelaMudarSenhaState extends State<TelaMudarSenha> {
  //Atributos
  var txtSenha1 = TextEditingController();
  var txtSenha2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        extendBodyBehindAppBar: false,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new, color: Colors.grey),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: EdgeInsets.fromLTRB(30, 0, 30, 30),
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
                          child:
                              Image.asset("lib/image/change-password-icon.png"),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Alteração de Senha',
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
                    SizedBox(
                      height: 30,
                    ),
                    Column(children: [
                      CampoSenha(
                          rotulo: 'Confirme a nova senha', variavel: txtSenha1),
                      CampoSenha(
                          rotulo: 'Confirme a nova senha', variavel: txtSenha2),
                    ]),
                    SizedBox(
                      height: 30,
                    ),
                    elevatedButtonGenerator(
                      context,
                      'Confirmar',
                      'telaMenuInicial',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
