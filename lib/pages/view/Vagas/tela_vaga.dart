import 'package:estagiotec/pages/view/Vagas/options/descricao.dart';
import 'package:flutter/material.dart';

import 'options/contato.dart';
import 'options/empresa.dart';

class Options {
  final String title;
  final Widget child;
  Options({required this.title, required this.child});
}

// ignore: must_be_immutable
class TelaVaga extends StatefulWidget {
  const TelaVaga({super.key});

  @override
  State<TelaVaga> createState() => _TelaVagaState();
}

class _TelaVagaState extends State<TelaVaga> {
  static List<Options> optionsTelaVaga = [
    Options(title: 'Descrição', child: DescricaoOption()),
    Options(title: 'Empresa', child: EmpresaOption()),
    Options(title: 'Contato', child: ContatoOption()),
  ];

  Options opcaoAtiva = optionsTelaVaga[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
              minHeight: MediaQuery.of(context).size.height,
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
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: optionsTelaVaga
                            .map((opcao) => TextButton(
                                  style: ElevatedButton.styleFrom(
                                      minimumSize: Size(120, 38),
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
                      height: 50,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(74, 74),
                          backgroundColor: Color.fromRGBO(205, 121, 106, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          )),
                      child: Icon(
                        Icons.bookmark_border,
                        color: Colors.white,
                        size: 48,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          minimumSize:
                              Size(MediaQuery.of(context).size.width - 150, 74),
                          backgroundColor: Color.fromRGBO(30, 40, 107, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          )),
                      child: Text('Aplicar',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
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

  mudaOpcaoAtiva(Options opcao) {
    setState(() {
      opcaoAtiva = opcao;
    });
  }
}
