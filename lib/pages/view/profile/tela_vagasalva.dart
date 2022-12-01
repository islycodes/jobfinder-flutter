import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../components/utilsClasses.dart';

class MinhasVagas {
  String nomeVaga, nomeEmpresa;

  MinhasVagas({
    required this.nomeVaga,
    required this.nomeEmpresa,
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
      nomeVaga: 'Dev Flutter',
      nomeEmpresa: 'Empresa ABC',
    ),
  ];

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
          title: Text('VAGAS SALVAS'),
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
                                    context,
                                    'telaVaga',
                                    arguments: Vaga(
                                      "asdasdasdasd",
                                      true,
                                      'Dev Flutter',
                                      new Timestamp(1, 1),
                                      "Esta é a descrição de uma vaga de estágio para estudantes que gostem de Flutter :D",
                                      'Remoto',
                                      "Empresa ABC",
                                      'Essa é uma empresa que oferece estágio para estudantes que cursem ADS :D',
                                      '16988332255',
                                      'Avenida Rio Parnaiba, 777',
                                    ),
                                  );
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

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }
}
