import 'package:flutter/material.dart';

campoTexto(String rotulo, variavel, IconData icone) {
  return Container(
    margin: EdgeInsets.all(5),
    child: TextFormField(
      cursorColor: Color.fromRGBO(78, 79, 249, 1),
      textAlignVertical: TextAlignVertical.center,
      controller: variavel,
      style: TextStyle(
        fontSize: 16,
        color: Colors.black,
      ),
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.never,
        floatingLabelStyle: TextStyle(color: Color.fromRGBO(78, 79, 249, 1)),
        labelText: rotulo,
        prefixIcon: Icon(
          icone,
          size: 24,
        ),
      ),
    ),
  );
}
