import 'package:estagiotec/pages/view/jobs/tela_vaga.dart';
import 'package:estagiotec/pages/view/jobs/tela_vagaBookmark.dart';
import 'package:estagiotec/pages/view/tela_menu_inicial.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'firebase_options.dart';
import 'pages/about-us/tela_sobre.dart';
import 'pages/about-us/tela_sobreApp.dart';
import 'pages/settings/historico.dart';
import 'pages/settings/notificacoes.dart';
import 'pages/settings/tela_configuracoes.dart';
import 'pages/view/Auth/redefinir_senha.dart';
import 'pages/view/Auth/tela_cadastro.dart';
import 'pages/view/Auth/tela_login.dart';
import 'pages/view/profile/tela_cv.dart';
import 'pages/view/profile/tela_dados.dart';
import 'pages/view/profile/tela_perfil.dart';
import 'pages/view/profile/tela_vagasalva.dart';
import 'pages/view/tela_inicial.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.leanBack); //oculta a status bar do Android
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
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

class Options {
  final String title;
  late final Widget child;
  Options({required this.title, required this.child});
}
