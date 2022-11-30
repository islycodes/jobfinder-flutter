import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../components/elevatedButtonGenerator.dart';

class AlteraSenha extends StatefulWidget {
  const AlteraSenha({super.key});

  @override
  State<AlteraSenha> createState() => _AlteraSenhaState();
}

class _AlteraSenhaState extends State<AlteraSenha> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(top: 60, left: 40, right: 40),
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        width: 299,
                        height: 260,
                        child:
                            Image.asset("lib/images/change-password-icon.png"),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Redefina \n sua Senha?",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      TextFormField(
                        cursorColor: Color.fromRGBO(84, 51, 99, 1),
                        obscureText: true,
                        enableSuggestions: false,
                        autocorrect: false,
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      SizedBox(height: 40),
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
