import 'package:flutter/material.dart';

campoSenha(rotulo, variavel) {
  return Container(
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: TextFormField(
          cursorColor: Color.fromRGBO(78, 79, 249, 1),
          obscureText: true,
          enableSuggestions: false,
          autocorrect: false,
          controller: variavel,
          style: TextStyle(fontSize: 16, color: Colors.black),
          decoration: new InputDecoration(
            floatingLabelStyle:
                TextStyle(color: Color.fromRGBO(78, 79, 249, 1)),
            labelText: rotulo,
          )));
}
