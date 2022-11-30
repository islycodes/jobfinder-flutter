import 'package:estagiotec/pages/view/jobs/options/descricao.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'options/contato.dart';
import 'options/empresa.dart';

class Options {
  final String title;
  final Widget child;
  Options({required this.title, required this.child});
}

class TelaVagaBookMark extends StatefulWidget {
  final bool aplicado;
  final bool vagaFavoritada;

  const TelaVagaBookMark(
      {super.key, this.aplicado = true, this.vagaFavoritada = true});

  @override
  State<TelaVagaBookMark> createState() => _TelaVagaBookMarkState(
      aplicado: aplicado, vagaFavoritada: vagaFavoritada);
}

class _TelaVagaBookMarkState extends State<TelaVagaBookMark> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }

  static List<Options> optionsTelaVagaBookMark = [
    Options(
        title: 'Descrição',
        child: DescricaoOption(
          description: '',
        )),
    Options(
        title: 'Empresa', child: EmpresaOption(description: '', location: '')),
    Options(
        title: 'Contato',
        child: ContatoOption(
          contact: '',
        )),
  ];

  Options opcaoAtiva = optionsTelaVagaBookMark[0];
  bool aplicado;
  bool vagaFavoritada;

  _TelaVagaBookMarkState({this.aplicado = true, this.vagaFavoritada = true});

  aplicarVaga() {
    setState(() {
      aplicado = !aplicado;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('VISUALIZAÇÃO DE VAGA'),
        titleTextStyle: TextStyle(
            fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.grey),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height - 120,
              minWidth: MediaQuery.of(context).size.width,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.square_rounded,
                                size: 140,
                                color: Color.fromRGBO(217, 217, 217, 1)),
                            Text('Nome da vaga',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                            Text('Nome da empresa - Modalidade',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black)),
                          ]),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: optionsTelaVagaBookMark
                            .map((opcao) => TextButton(
                                  style: ElevatedButton.styleFrom(
                                      minimumSize: Size(100, 38),
                                      backgroundColor:
                                          opcaoAtiva.title == opcao.title
                                              ? Color.fromRGBO(205, 121, 106, 1)
                                              : Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(16),
                                      )),
                                  child: Text(opcao.title,
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
                                  onPressed: () {
                                    mudaOpcaoAtiva(opcao);
                                  },
                                ))
                            .toList(),
                      )
                    ]),
                    SizedBox(
                      height: 35,
                    ),
                    opcaoAtiva.child,
                    SizedBox(
                      height: 35,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        favoritarVaga();
                      },
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(74, 74),
                          backgroundColor: Color.fromRGBO(205, 121, 106, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          )),
                      child: Icon(
                        vagaFavoritada
                            ? Icons.bookmark_remove
                            : Icons.bookmark_border,
                        color: Colors.white,
                        size: 48,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        aplicarVaga();
                        caixaDialogo('Vaga Demo', "Você se candidatou à vaga!");
                      },
                      style: ElevatedButton.styleFrom(
                          minimumSize:
                              Size(MediaQuery.of(context).size.width - 150, 74),
                          backgroundColor: aplicado
                              ? Colors.grey.shade300
                              : Color.fromRGBO(30, 40, 107, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          )),
                      child: Text(aplicado ? 'Aplicado' : 'Aplicar',
                          style: TextStyle(
                              fontSize: 20,
                              color: aplicado
                                  ? Colors.grey.shade700
                                  : Colors.white,
                              fontWeight: FontWeight.bold)),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  caixaDialogo(title, msg) {
    return aplicado
        ? showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(title),
                content: Text(msg, style: TextStyle(fontSize: 16)),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('Ok'),
                  ),
                ],
              );
            },
          )
        : null;
  }

  favoritarVaga() {
    setState(() {
      vagaFavoritada = !vagaFavoritada;
    });
  }

  mudaOpcaoAtiva(Options opcao) {
    setState(() {
      opcaoAtiva = opcao;
    });
  }
}
