import 'package:flutter/material.dart';
import 'view/tela_inicial.dart';
import 'view/tela_login.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Estagiotec',
      //
      // NAVEGAÇÃO
      //
      initialRoute: 'telaInicial',
      routes: {
        'telaInicial': (context) => TelaInicial(),
        // 'telaCadastro': (context) => TelaCadastro(),
        'telaLogin': (context) => TelaLogin(),
      }));
}
