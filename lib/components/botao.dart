import 'package:flutter/material.dart';

elevatedButtonGenerator(BuildContext context, String rotulo, String rota,
    {TextStyle textStyle = const TextStyle(
        fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
    ButtonStyle buttonStyle = const ButtonStyle(
        minimumSize: MaterialStatePropertyAll(
          Size(371, 66),
        ),
        backgroundColor:
            MaterialStatePropertyAll(Color.fromRGBO(84, 51, 99, 1)),
        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)))))}) {
  return ElevatedButton(
    style: buttonStyle,

    //COMPORTAMENTO
    onPressed: () {
      Navigator.pushNamed(context, rota);
    },
    //CONTEÚDO
    child: Text(rotulo, style: textStyle),
  );
}
