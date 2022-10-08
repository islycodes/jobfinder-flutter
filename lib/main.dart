import 'package:estagiotec/pages/view/Vagas/tela_vaga.dart';
import 'package:estagiotec/pages/view/tela_menu_inicial.dart';
import 'package:flutter/material.dart';

import 'pages/view/perfil/tela_vagasalva.dart';
import 'pages/view/perfil/tela_cv.dart';
import 'pages/view/perfil/tela_dados.dart';
import 'pages/view/Auth/mudar_senha.dart';
import 'pages/view/Auth/redefinir_senha.dart';
import 'pages/view/Auth/tela_Otp.dart';
import 'pages/view/Auth/tela_cadastro.dart';
import 'pages/view/Auth/tela_login.dart';
import 'pages/view/perfil/tela_perfil.dart';
import 'pages/view/tela_inicial.dart';

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
        'telaMenuInicial': (context) => TelaMenuInicial(),
        'telaLogin': (context) => TelaLogin(),
        'telaEsqueceuSenha': (context) => EsqueceuSenha(),
        'telaOtp': (context) => TelaOtp(),
        'telaMudarSenha': (context) => TelaMudarSenha(),
        'telaPerfil': (context) => TelaPerfil(),
        'telaDados': (context) => TelaDados(),
        'telaCV': (context) => TelaCV(),
        'telaVagaSalva': (context) => TelaVagaSalva(),
        'telaVaga1': (context) => TelaVaga(),
        'telaVaga2': (context) => TelaVaga(),
        'telaVaga3': (context) => TelaVaga(),
        'telaVaga4': (context) => TelaVaga(),
        'telaVaga5': (context) => TelaVaga(),
        'telaVaga6': (context) => TelaVaga(),
        'telaVaga7': (context) => TelaVaga(),
        'telaVaga8': (context) => TelaVaga(),
      }));
}
