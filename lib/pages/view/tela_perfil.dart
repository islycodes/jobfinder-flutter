import 'package:flutter/material.dart';

class OpcoesPerfil {
  String nomeOpcao, caminhoOpcao;

  OpcoesPerfil({
    required this.nomeOpcao,
    required this.caminhoOpcao,
  });
}

class TelaPerfil extends StatelessWidget {
  const TelaPerfil({super.key});

  static List<OpcoesPerfil> opcoesPerfil = [
    OpcoesPerfil(nomeOpcao: 'Meus dados', caminhoOpcao: 'telaDados'),
    OpcoesPerfil(nomeOpcao: 'Meus currículo', caminhoOpcao: 'telaCV'),
    OpcoesPerfil(nomeOpcao: 'Minhas candidaturas', caminhoOpcao: 'telaCandidaturas'),
    OpcoesPerfil(nomeOpcao: 'Vagas Salvas', caminhoOpcao: 'telaVagaSalva'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        extendBodyBehindAppBar: false,
        appBar: AppBar(
          title: Text('Perfil'),
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
                        children: 
                          opcoesPerfil.map(
                          (opcao) {
                            return Card(
                              color: Color.fromRGBO(248, 246, 249, 1),
                              margin: EdgeInsets.only(bottom: 20),
                              child: InkWell(
                                borderRadius: BorderRadius.circular(5),
                                onTap: () {
                                  Navigator.pushNamed(context, opcao.caminhoOpcao);
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
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold)),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                minimumSize: Size(74, 74),
                                backgroundColor: Color.fromRGBO(30, 40, 107, 1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                )),
                            child: Icon(
                              Icons.settings,
                              color: Colors.white,
                              size: 48,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ))));
  }
}
