// ignore_for_file: sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TelaInicial extends StatefulWidget {
  const TelaInicial({super.key});

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  @override
  Widget build(BuildContext context) {
    bool isLogout;
    try {
      isLogout = ModalRoute.of(context)!.settings.arguments as bool;
    } catch (e) {
      isLogout = false;
    }

    Widget widgetBody =
        Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      //Título
      Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Text(
            'Estagiotec',
            style: TextStyle(
              fontSize: 72,
              color: Color.fromRGBO(85, 97, 250, 1),
              fontWeight: FontWeight.w900,
              fontFamily: 'NotoSansDisplay',
            ),
          ),
          Text('Criado para alunos por alunos',
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'OpenSans',
                fontWeight: FontWeight.w400,
              ))
        ],
      ),

      //Subtitulo
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: 160,
          ),
          Text('Explore as melhores vagas baseadas\n na sua área de interesse.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'OpenSans',
                fontWeight: FontWeight.w400,
              ))
        ],
      ),

      //botões
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                minimumSize: Size(157, 70),
                backgroundColor: Colors.grey.shade100,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                )),
            onPressed: () {
              Navigator.pushNamed(context, 'telaCadastro');
            },
            child: Text(
              'Cadastrar',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontFamily: 'OpenSans',
              ),
            ) // botao cadastrar
            ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                minimumSize: Size(157, 70),
                backgroundColor: Color.fromRGBO(30, 40, 107, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                )),
            onPressed: () {
              Navigator.pushNamed(context, 'telaLogin');
            },
            child: Text(
              'Entrar',
              style: TextStyle(
                  fontSize: 16, color: Colors.white, fontFamily: 'OpenSans'),
            )),
      ])
    ]);

    return isLogout
        ? new WillPopScope(
            onWillPop: () async => false,
            child: Scaffold(
                backgroundColor: Colors.white,
                extendBodyBehindAppBar: true,
                appBar: AppBar(
                  backgroundColor: Colors.white,
                  toolbarHeight: 80,
                  elevation: 0,
                ),
                body: widgetBody))
        : Scaffold(
            backgroundColor: Colors.white,
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              backgroundColor: Colors.white,
              toolbarHeight: 80,
              elevation: 0,
            ),
            body: widgetBody);
  }

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }
}
