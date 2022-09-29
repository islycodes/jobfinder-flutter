import 'package:flutter/material.dart';

import '../components/campoTexto.dart';

class TelaMenuInicial extends StatelessWidget {
  const TelaMenuInicial({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height,
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.account_circle, size: 40, color: Colors.black),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Nome do usuário',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black)),
                            Text('Curso do usuário - período',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black)),
                          ],
                        ),
                      )
                    ],
                  ),
                  Text('Encontre seu estágio',
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                  Row(
                    children: <Widget>[
                      Flexible(
                        child: campoTexto('Pesquisar', controller),
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          child: Icon(Icons.filter_alt_outlined))
                    ],
                  ),
                  Text('Vagas em destaque',
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                  Text('Relacionado ao seu curso',
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                  // ['asd','kj','asd','asdasd'].map((item) {
                  //   return Container(child: Text(item));
                  // }).toList(),
                  Column(
                    children: [
                      'asd',
                      'asd',
                      'asdas',
                      '',
                      ',',
                      ',',
                      ',',
                      ',',
                      ',',
                      '',
                      'asd'
                    ].map((e) {
                      return Card(
                        shadowColor: Colors.black54,
                        elevation: 5,
                        child: ListTile(
                          title: Text(e),
                          subtitle: Text('Capital: ${e}'),
                        ),
                      );
                    }).toList(),
                  ),
                ]),
          )),
    );
  }
}
