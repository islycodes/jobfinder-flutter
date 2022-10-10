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
            child: Column(
          children: [
            Container(
              height: (MediaQuery.of(context).size.height) - 450,
              padding: EdgeInsets.all(20),
              child: RichText(
                text: TextSpan(
                  style: defaultStyle,
                  children: <TextSpan>[
                    TextSpan(
                      text:
                          'Este projeto desenvolvido a partir da identificação de uma carência de softwares que auxiliem a conexão do estudante que busca estágio e da empresa que necessita de empregados. A partir disso foi pensado a criação deste aplicativo para ajudar o aluno a encontrar as vagas de estágio ofertadas pelas empresas na área de tecnologia da informação. Este portal foi desenvolvido em Dart usando o framework Flutter. Novas atualizações e maior descrição do projeto podem ser encontrados ',
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
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Desenvolvido por:',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: "Open Sans",
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  SizedBox(height: 30),
                  SizedBox(
                    width: 85,
                    height: 85,
                    child: Image.asset(
                      "lib/images/adriellyisly-icon.jpeg",
                    ),
                  ),
                ]),
                Text(
                  'Adrielly Isly',
                  style: TextStyle(
                    fontFamily: 'Open Sans',
                    fontSize: 14,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Aluna da Fatec de Ribeirão Preto - SP',
                  style: TextStyle(
                    fontFamily: 'Open Sans',
                    fontSize: 10,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            SizedBox(height: 20),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 85,
                      height: 85,
                      child: Image.asset("lib/images/felipebotelho-icon.jpeg"),
                    ),
                  ],
                ),
                Text(
                  'Felipe Botelho',
                  style: TextStyle(
                    fontFamily: 'Open Sans',
                    fontSize: 14,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Aluno da Fatec de Ribeirão Preto - SP',
                  style: TextStyle(
                    fontFamily: 'Open Sans',
                    fontSize: 10,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                
              ],
            ),
          ],
        )));
  }
}

                            // 