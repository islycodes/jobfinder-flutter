import 'package:flutter/material.dart';

class TelaSobreoAplicativo extends StatefulWidget {
  const TelaSobreoAplicativo({super.key});

  @override
  State<TelaSobreoAplicativo> createState() => _TelaSobreoAplicativoState();
}

class _TelaSobreoAplicativoState extends State<TelaSobreoAplicativo> {
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
                child: Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                            'Este projeto desenvolvido a partir da identificação de uma carência de softwares que auxiliem a conexão do estudante que busca estágio e da empresa que necessita de empregados. A partir disso foi pensado a criação deste aplicativo para ajudar o aluno a encontrar as vagas de estágio ofertadas pelas empresas na área de tecnologia da informação. Este portal foi desenvolvido em Dart usando o framework flutter. Novas atualizações e maior descrição do projeto pode ser encontrado',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            )),
                        new InkWell(
                            child: new Text('Open Browser'),
                            onTap: () =>
                                ('https://docs.flutter.io/flutter/services/UrlLauncher-class.html')),
                      ],
                    )
                  ],
                ))));
  }
}
