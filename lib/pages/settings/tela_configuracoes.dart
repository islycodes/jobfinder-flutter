import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Opcoes {
  String nomeOpcao, caminhoOpcao;

  Opcoes({
    required this.nomeOpcao,
    required this.caminhoOpcao,
  });
}

class TelaConfiguracoes extends StatefulWidget {
  const TelaConfiguracoes({super.key});

  @override
  State<TelaConfiguracoes> createState() => _TelaConfiguracoesState();
}

class _TelaConfiguracoesState extends State<TelaConfiguracoes> {
  static List<Opcoes> opcoes = [
    Opcoes(
        nomeOpcao: 'Gerenciar notificações', caminhoOpcao: 'telaNotificacoes'),
    Opcoes(
        nomeOpcao: 'Limpar histórico de busca', caminhoOpcao: 'telaHistorico'),
    Opcoes(nomeOpcao: 'Sobre', caminhoOpcao: 'telaSobre'),
    Opcoes(nomeOpcao: 'Sair', caminhoOpcao: 'telaInicial'),
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
          title: Text('CONFIGURAÇÕES'),
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
                                  if (opcao.nomeOpcao == "Sair") {
                                    Navigator.pushNamed(
                                        context, opcao.caminhoOpcao,
                                        arguments: true);
                                  } else {
                                    Navigator.pushNamed(
                                        context, opcao.caminhoOpcao,
                                        arguments: false);
                                  }
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
