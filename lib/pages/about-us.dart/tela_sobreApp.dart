import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TelaSobreoAplicativo extends StatefulWidget {
  const TelaSobreoAplicativo({super.key});

  @override
  State<TelaSobreoAplicativo> createState() => _TelaSobreoAplicativoState();
}

class _TelaSobreoAplicativoState extends State<TelaSobreoAplicativo> {
  static TextStyle linkStyle = TextStyle(color: Colors.blue);
  static TextStyle defaultStyle = TextStyle(
    fontSize: 14,
    color: Colors.black,
  );
  final Uri urlGithub = Uri(
      scheme: 'https', host: 'www.github.com', path: 'dricodes/estagiotec_app');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        extendBodyBehindAppBar: false,
        appBar: AppBar(
          centerTitle: true,
          title: Text('SOBRE O APLICATIVO'),
          titleTextStyle: TextStyle(
              fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
          backgroundColor: Colors.white,
          elevation: 0,
          toolbarHeight: 80,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new, color: Colors.grey),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.all(20),
                child: RichText(
                  text: TextSpan(
                    style: defaultStyle,
                    children: <TextSpan>[
                      TextSpan(
                        text:
                            'Este projeto desenvolvido a partir da identificação de uma carência de softwares que auxiliem a conexão do estudante que busca estágio e da empresa que necessita de empregados. A partir disso foi pensado a criação deste aplicativo para ajudar o aluno a encontrar as vagas de estágio ofertadas pelas empresas na área de tecnologia da informação. Este portal foi desenvolvido em Dart usando o framework flutter. Novas atualizações e maior descrição do projeto pode ser encontrado ',
                      ),
                      TextSpan(
                          text: 'aqui',
                          style: linkStyle,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              launchUrl(urlGithub);
                            }),
                    ],
                  ),
                ))));
  }
}

                            // 