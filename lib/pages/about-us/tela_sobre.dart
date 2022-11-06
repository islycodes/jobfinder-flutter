import 'package:flutter/material.dart';

class Opcoes {
  String nomeOpcao, caminhoOpcao;

  Opcoes({
    required this.nomeOpcao,
    required this.caminhoOpcao,
  });
}

class TelaSobre extends StatelessWidget {
  const TelaSobre({super.key});

  static List<Opcoes> opcoes = [
    Opcoes(nomeOpcao: 'Termos de uso', caminhoOpcao: ''),
    Opcoes(nomeOpcao: 'Política de privacidade', caminhoOpcao: ''),
    Opcoes(
        nomeOpcao: 'Sobre o aplicativo', caminhoOpcao: 'telaSobreoAplicativo'),
    Opcoes(nomeOpcao: 'Versão 0.1', caminhoOpcao: ''),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        extendBodyBehindAppBar: false,
        appBar: AppBar(
          centerTitle: true,
          title: Text('SOBRE'),
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
                        children: opcoes.map(
                          (opcao) {
                            return Card(
                              color: Color.fromRGBO(248, 246, 249, 1),
                              margin: EdgeInsets.only(bottom: 20),
                              child: InkWell(
                                borderRadius: BorderRadius.circular(5),
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, opcao.caminhoOpcao);
                                },
                                child: Padding(
                                  padding: EdgeInsets.all(20),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Text(opcao.nomeOpcao,
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: opcao.nomeOpcao ==
                                                            'Versão 0.1'
                                                        ? Colors.grey
                                                        : Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ],
                                        ),
                                        opcao.nomeOpcao == 'Versão 0.1'
                                            ? Icon(Icons.copy,
                                                color: Colors.grey)
                                            : Icon(Icons.arrow_forward_ios),
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
