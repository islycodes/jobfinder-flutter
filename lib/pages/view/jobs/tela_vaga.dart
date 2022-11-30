import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../components/utilsClasses.dart';
import '../../../main.dart';
import 'options/contato.dart';
import 'options/descricao.dart';
import 'options/empresa.dart';

class TelaVaga extends StatefulWidget {
  final bool aplicado;
  final bool vagaFavoritada;
  final int opcaoAtiva;
  const TelaVaga(
      {super.key,
      this.aplicado = false,
      this.vagaFavoritada = false,
      this.opcaoAtiva = 0});

  @override
  State<TelaVaga> createState() => _TelaVagaState(
      aplicado: aplicado,
      vagaFavoritada: vagaFavoritada,
      opcaoAtiva: opcaoAtiva);
}

class _TelaVagaState extends State<TelaVaga> {
  bool aplicado;

  bool vagaFavoritada;
  int opcaoAtiva;
  _TelaVagaState({
    this.aplicado = false,
    this.vagaFavoritada = false,
    this.opcaoAtiva = 0,
  });

  void aplicarVaga() {
    setState(() {
      aplicado = !aplicado;
    });
  }

  @override
  Widget build(BuildContext context) {
    Vaga vagaAtual = ModalRoute.of(context)!.settings.arguments as Vaga;

    List<Options> optionsTelaVaga = [
      Options(
          title: 'Descrição',
          child: DescricaoOption(
            description: vagaAtual.description,
          )),
      Options(
          title: 'Empresa',
          child: EmpresaOption(
              description: vagaAtual.companyDescription,
              location: vagaAtual.companyAddress)),
      Options(
          title: 'Contato',
          child: ContatoOption(
            contact: vagaAtual.companyContact,
          )),
    ];

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
                            Text(vagaAtual.title,
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                            Text(
                                '${vagaAtual.companyName} - ${vagaAtual.model}',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black))
                          ]),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: optionsTelaVaga
                            .map((opcao) => TextButton(
                                  style: ElevatedButton.styleFrom(
                                      minimumSize: Size(100, 38),
                                      backgroundColor: opcaoAtiva ==
                                              optionsTelaVaga.indexOf(opcao)
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
                                    mudaOpcaoAtiva(
                                        optionsTelaVaga.indexOf(opcao));
                                  },
                                ))
                            .toList(),
                      )
                    ]),
                    SizedBox(
                      height: 35,
                    ),
                    optionsTelaVaga[opcaoAtiva].child,
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
                        caixaDialogo('Vaga ${vagaAtual.title}',
                            "Você se candidatou à vaga!");
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

  // METHODS

  void favoritarVaga() {
    setState(() {
      vagaFavoritada = !vagaFavoritada;
    });
  }

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }

  void mudaOpcaoAtiva(int opcao) {
    setState(() {
      opcaoAtiva = opcao;
    });
  }
}
