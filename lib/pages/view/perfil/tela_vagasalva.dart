import 'package:flutter/material.dart';

class MinhasVagas {
  String nomeVaga, nomeEmpresa, caminhoVaga;

  MinhasVagas({
    required this.nomeVaga,
    required this.nomeEmpresa,
    required this.caminhoVaga,
  });
}

class TelaVagaSalva extends StatefulWidget {
  const TelaVagaSalva({super.key});

  @override
  State<TelaVagaSalva> createState() => _TelaVagaSalvaState();
}

class _TelaVagaSalvaState extends State<TelaVagaSalva> {
  static List<MinhasVagas> minhasVagas = [
    MinhasVagas(
        nomeVaga: 'Desenvolvedor Flutter',
        nomeEmpresa: 'Empresa 1',
        caminhoVaga: "telaVagaBookMark"),
    MinhasVagas(
        nomeVaga: 'Desenvolvedor React',
        nomeEmpresa: 'Empresa 2',
        caminhoVaga: "telaVagaBookMark"),
    MinhasVagas(
        nomeVaga: 'Desenvolvedor Angular',
        nomeEmpresa: 'Empresa 3',
        caminhoVaga: "telaVagaBookMark"),
    MinhasVagas(
        nomeVaga: 'Desenvolvedor ABAP',
        nomeEmpresa: 'Empresa 4',
        caminhoVaga: "telaVagaBookMark"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        extendBodyBehindAppBar: false,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          toolbarHeight: 80,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new, color: Colors.grey),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                  height: (MediaQuery.of(context).size.height) - 150,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: minhasVagas.map(
                          (vaga) {
                            return Card(
                              color: Color.fromRGBO(248, 246, 249, 1),
                              margin: EdgeInsets.only(bottom: 20),
                              child: InkWell(
                                borderRadius: BorderRadius.circular(5),
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, vaga.caminhoVaga);
                                },
                                child: Padding(
                                  padding: EdgeInsets.all(20),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(vaga.nomeVaga,
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            Text(vaga.nomeEmpresa,
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.black,
                                                )),
                                          ],
                                        ),
                                        Icon(Icons.arrow_forward_ios),
                                      ]),
                                ),
                              ),
                            );
                          },
                        ).toList(),
                      ),
                    ],
                  ),
                ))));
  }
}
