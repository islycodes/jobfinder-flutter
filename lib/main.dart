
import 'package:estagiotec/pages/view/jobs/tela_vaga.dart';
import 'package:estagiotec/pages/view/jobs/tela_vagaBookmark.dart';
import 'package:estagiotec/pages/view/tela_menu_inicial.dart';
import 'package:flutter/material.dart';

import 'pages/about-us.dart/tela_sobre.dart';
import 'pages/about-us.dart/tela_sobreApp.dart';
import 'pages/settings/historico.dart';
import 'pages/settings/notificacoes.dart';
import 'pages/view/Auth/mudar_senha.dart';
import 'pages/view/Auth/redefinir_senha.dart';
import 'pages/view/Auth/tela_Otp.dart';
import 'pages/view/Auth/tela_cadastro.dart';
import 'pages/view/Auth/tela_login.dart';
import 'pages/settings/tela_configuracoes.dart';
import 'pages/view/profile/tela_cv.dart';
import 'pages/view/profile/tela_dados.dart';
import 'pages/view/profile/tela_perfil.dart';
import 'pages/view/profile/tela_vagasalva.dart';
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
        'telaVaga': (context) => TelaVaga(),
        'telaVagaBookMark': (context) => TelaVagaBookMark(),
        'telaConfiguracoes': (context) => TelaConfiguracoes(),
        'telaNotificacoes': (context) => TelaNotificacoes(),
        'telaHistorico': (context) => TelaHistorico(),
        'telaSobre': (context) => TelaSobre(),
        'telaSobreoAplicativo': (context) => TelaSobreoAplicativo(),
      }));
}
