import 'package:estagiotec/components/campoTexto.dart';
import 'package:estagiotec/components/elevatedButtonGenerator.dart';
import 'package:flutter/material.dart';

class EsqueceuSenha extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 80,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.grey),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 30),
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        width: 300,
                        height: 300,
                        child: Image.asset("lib/images/reset-password-icon.png"),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Esqueceu sua senha?",
                            style: TextStyle(
                              color: Color.fromRGBO(85, 97, 250, 1),
                              fontSize: 24,
                              fontFamily: "Open Sans",
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Não se preocupe! isso acontece. Por favor, digite o e-mail associado a sua conta.",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.start,
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      campoTexto(
                          'Digite seu email', null, Icons.alternate_email),
                      SizedBox(height: 15),
                    ],
                  ),
                ),
                elevatedButtonGenerator(context, 'Enviar', 'telaLogin'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
