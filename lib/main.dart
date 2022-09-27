import 'package:flutter/material.dart';

import 'view/Auth/redefinir_senha.dart';
import 'view/Auth/tela_cadastro.dart';
import 'view/Auth/tela_login.dart';
import 'view/tela_inicial.dart';

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
        'telaCadastro': (context) => TelaCadastro(),
        'telaLogin': (context) => TelaLogin(),
        'redefinirSenha': (context) => RedefinirSenha(),
      }));
}
