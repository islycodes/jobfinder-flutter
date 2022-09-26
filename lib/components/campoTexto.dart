import 'package:flutter/material.dart';

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
