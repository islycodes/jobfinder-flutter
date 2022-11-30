// ignore_for_file: prefer_const_constructors, unused_local_variable, prefer_typing_uninitialized_variables

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ListarVagasVerticalWidget extends StatefulWidget {
  final vagas;
  const ListarVagasVerticalWidget(this.vagas, {Key? key}) : super(key: key);

  @override
  State<ListarVagasVerticalWidget> createState() =>
      _ListarVagasVerticalWidgetState();
}

class _ListarVagasVerticalWidgetState extends State<ListarVagasVerticalWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StreamBuilder<QuerySnapshot>(
          stream: widget.vagas.snapshots(),
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
                  return ListView.builder(
                    itemCount: dados.size,
                    itemBuilder: (context, index) {
                      dynamic vaga = dados.docs[index].data();
                      String titleVaga = vaga['title'];
                      String descriptionVaga = vaga['description'];

                      return Card(
                        color: Color.fromRGBO(245, 242, 248, 1),
                        margin: EdgeInsets.only(bottom: 20),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(5),
                          onTap: () {
                            // TODO: Implementar ação ao clicar na vaga
                            // Navigator.pushNamed(context, vaga.caminhoVaga);
                          },
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(10, 13, 25, 13),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.square_rounded,
                                          size: 48,
                                          color:
                                              Color.fromRGBO(217, 217, 217, 1)),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(titleVaga,
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold)),
                                          Text(descriptionVaga,
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.black)),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Icon(Icons.arrow_forward_ios)
                                ]),
                          ),
                        ),
                      );
                    },
                  );
                } else {
                  return Center(
                    child: Text('Nenhuma vaga encontrada.'),
                  );
                }
            }
          },
        ),
      ],
    );
  }
}
