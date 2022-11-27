import 'package:flutter/material.dart';

import '../../../components/utilsClasses.dart';
import '../../../main.dart';
import 'options/descricao.dart';

class TelaVaga extends StatefulWidget {
  final List<Options> options;
  final bool aplicado;
  final bool vagaFavoritada;
  const TelaVaga({
    super.key,
    this.aplicado = false,
    this.options = const [],
    this.vagaFavoritada = false,
  });

  @override
  State<TelaVaga> createState() => _TelaVagaState(
      aplicado: aplicado, vagaFavoritada: vagaFavoritada, options: options);
}

class _TelaVagaState extends State<TelaVaga> {
  bool aplicado;
  List<Options> options;
  bool vagaFavoritada;
  var nomeEmpresa;
  Options opcaoAtiva = Options(title: '', child: Container());

  _TelaVagaState(
      {this.aplicado = false,
      this.vagaFavoritada = false,
      this.options = const []});

  void aplicarVaga() {
    setState(() {
      aplicado = !aplicado;
    });
  }

  @override
  Widget build(BuildContext context) {
    Vaga vagaAtual = ModalRoute.of(context)!.settings.arguments as Vaga;

    mudaConteudoOpcao(vagaAtual.description);
    mudaOpcaoAtiva(options[0]);
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
                        children: optionsTelaVaga
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

  // METHODS

  void favoritarVaga() {
    setState(() {
      vagaFavoritada = !vagaFavoritada;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  void mudaConteudoOpcao(String description) {
    setState(() {
      optionsTelaVaga[0] = Options(
          title: 'Descrição', child: DescricaoOption(description: description));
    });
  }

  void mudaOpcaoAtiva(Options opcao) {
    setState(() {
      opcaoAtiva = opcao;
    });
  }
}
