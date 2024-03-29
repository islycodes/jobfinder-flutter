import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
      scheme: 'https',
      host: 'www.github.com',
      path: 'islycodes/estagiotec_app');
  final Uri urlGithubAdrielly =
      Uri(scheme: 'https', host: 'www.github.com', path: 'islycodes');

  final Uri urlGithubFelipe =
      Uri(scheme: 'https', host: 'www.github.com', path: 'felipegbot');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        extendBodyBehindAppBar: false,
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
            // Status bar color
            statusBarColor: Colors.white,
          ),
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
            child: Column(children: [
          Container(
            height: (MediaQuery.of(context).size.height) - 550,
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
                'Autores',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: "Open Sans",
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),

          //Adrielly
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card(
                  color: Colors.grey.shade100,
                  margin: EdgeInsets.all(20),
                  child: InkWell(
                      onTap: () {
                        launchUrl(urlGithubAdrielly);
                      },
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 13, 25, 13),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 80,
                                  height: 80,
                                  child: Image.asset(
                                    "lib/images/adriellyisly-icon.jpeg",
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Adrielly Isly',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(width: 120),
                                    Text(
                                        'Desenvolvedora e Consultora SAP\n' +
                                            'Gerência dos testes, UX/UI e programação do Front-End.',
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.black)),
                                  ],
                                ),
                              ])))),
              //felipe
              Card(
                  color: Colors.grey.shade100,
                  margin: EdgeInsets.all(20),
                  child: InkWell(
                      onTap: () {
                        launchUrl(urlGithubFelipe);
                      },
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 13, 25, 13),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 80,
                                  height: 80,
                                  child: Image.asset(
                                    "lib/images/felipebotelho-icon.jpeg",
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Felipe Botelho',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(width: 100),
                                    Text(
                                        'Desenvolvedor FullStack Junior\n' +
                                            'Programação do Back-End e Integração com o Firebase.',
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.black)),
                                  ],
                                ),
                              ])))),
            ],
          ),
        ])));
  }

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }
}
