import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:estagiotec/controller/login_controller.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../components/campoTexto_semIcone.dart';

class TelaDados extends StatefulWidget {
  const TelaDados({Key? key}) : super(key: key);

  @override
  State<TelaDados> createState() => _TelaDadosState();
}

class _TelaDadosState extends State<TelaDados> {
  var txtEmail = TextEditingController(
      text: FirebaseAuth.instance.currentUser!.email ?? '');

  var vagas;
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
          title: Text('MEUS DADOS'),
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
        body: StreamBuilder<QuerySnapshot>(
          stream: vagas.snapshots(),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                return const Center(
                  child: Text('Não foi possível conectar.'),
                );
              case ConnectionState.waiting:
                return const Center(child: CircularProgressIndicator());
              default:
                final dados = snapshot.requireData;
                if (dados.size > 0) {
                  dynamic doc = dados.docs[0].data();
                  var txtNome = TextEditingController(text: doc['nome']);
                  var txtCidade = TextEditingController(text: doc['cidade']);
                  var txtTel = TextEditingController(text: doc['telefone']);

                  return SingleChildScrollView(
                    child: Container(
                      height: (MediaQuery.of(context).size.height * 0.85),
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Form(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Nome',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontFamily: "Open Sans",
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ],
                                        ),
                                        campoTexto2('Digite seu nome', txtNome),
                                        SizedBox(height: 20),
                                      ],
                                    ),

                                    //Cidade
                                    Column(
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Cidade',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontFamily: "Open Sans",
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ],
                                        ),
                                        campoTexto2(
                                            'Digite sua cidade', txtCidade),
                                        SizedBox(height: 20),
                                      ],
                                    ),

                                    //Telefone
                                    Column(
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Telefone',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontFamily: "Open Sans",
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ],
                                        ),
                                        campoTexto2(
                                            'Digite seu Telefone', txtTel),
                                        SizedBox(height: 20),
                                      ],
                                    ),

                                    //Email
                                    Column(
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Email',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontFamily: "Open Sans",
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ],
                                        ),
                                        campoTexto2(
                                            'Digite seu email', txtEmail,
                                            readonly: true),
                                      ],
                                    ),
                                  ],
                                ),

                                //botao
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        //salvar dados
                                        LoginController()
                                            .salvarDadosUsuarioLogado(
                                          txtNome.text,
                                          txtCidade.text,
                                          txtTel.text,
                                        );
                                        Navigator.pop(context);
                                      },
                                      style: ElevatedButton.styleFrom(
                                          minimumSize: Size(74, 74),
                                          backgroundColor:
                                              Color.fromRGBO(30, 40, 107, 1),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          )),
                                      child: Icon(
                                        Icons.done_all,
                                        color: Colors.white,
                                        size: 48,
                                      ),
                                    )
                                  ],
                                ),
                              ]),
                        ),
                      ),
                    ),
                  );
                } else {
                  return Center(
                    child: Text('Nenhuma vaga encontrada.'),
                  );
                }
            }
          },
        ));
  }

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    vagas = LoginController().retornarDadosUsuarioLogado();
  }
}
