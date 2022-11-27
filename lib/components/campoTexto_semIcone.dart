import 'package:flutter/material.dart';

campoTexto2(String rotulo, variavel, {bool readonly = false}) {
  return Container(
      margin: EdgeInsets.all(5),
      child: TextFormField(
          readOnly: readonly,
          cursorColor: Colors.black,
          textAlignVertical: TextAlignVertical.center,
          controller: variavel,
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey.shade100,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            floatingLabelStyle:
                TextStyle(color: Color.fromRGBO(78, 79, 249, 1)),
            labelText: rotulo,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
          )));
}
