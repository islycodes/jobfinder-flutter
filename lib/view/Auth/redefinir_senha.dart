import 'package:estagiotec/components/campoTexto.dart';
import 'package:flutter/material.dart';

class RedefinirSenha extends StatelessWidget {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(251, 244, 255, 1),
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
                        child: Image.asset("lib/image/reset-password-icon.png"),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Esqueceu \n a senha?",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Não se preocupe! isso acontece. Por favor, digite o e-mail associado a sua conta.",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.center,
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
                      campoTexto('Digite seu email', null),
                      SizedBox(height: 40),
                    ],
                  ),
                ),
                botao('Enviar'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
