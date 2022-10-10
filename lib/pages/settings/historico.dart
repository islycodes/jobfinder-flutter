import 'package:flutter/material.dart';

class TelaHistorico extends StatefulWidget {
  const TelaHistorico({super.key});

  @override
  State<TelaHistorico> createState() => _TelaHistoricoState();
}

class _TelaHistoricoState extends State<TelaHistorico> {
  bool valCheck1 = false;
  bool valCheck2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        extendBodyBehindAppBar: false,
        appBar: AppBar(
          centerTitle: true,
          title: Text('LIMPAR HISTÓRICO'),
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
            child: Container(
          padding: EdgeInsets.all(20),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(' Remover dados de navegação',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 20),
            Column(children: [
              Row(
                children: [
                  Text(' Período',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                      textAlign: TextAlign.start),
                  SizedBox(width: 200),
                  //por o dropdownbutton aq
                ],
              ),
            ]),
            SizedBox(height: 10),
            Column(
              children: [
                Row(
                  children: [
                    Checkbox(
                        value: valCheck1,
                        activeColor: Color.fromRGBO(30, 40, 107, 1),
                        onChanged: (bool? value) {
                          setState(() {
                            valCheck1 = value!;
                          });
                        }),
                    Text('Histórico de pesquisa',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        )),
                  ],
                ),
                Text(
                    ' Limpa o histórico de pesquisa de todos os dispositivos\n sincronizados com sua conta.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    )),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Checkbox(
                        value: valCheck2,
                        activeColor: Color.fromRGBO(30, 40, 107, 1),
                        onChanged: (bool? value) {
                          setState(() {
                            valCheck2 = value!;
                          });
                        }),
                    Text('Cookies e dados salvos',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        )),
                  ],
                ),
                Text(
                    '  Remove todos os dados enviados por você. Será preciso \n  reenviar seu currículo caso selecione essa opção.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    )),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                    'O histórico de pesquisa e outras formas de atividade são salvos \nna conta conetada ao aplicativo. É possível excluí-los a qualquer \nmomento.',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold)),
              ],
            ),

            SizedBox(height: 350),
            //botao
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(74, 74),
                      backgroundColor: Color.fromRGBO(30, 40, 107, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      )),
                  child: Icon(
                    Icons.done,
                    color: Colors.white,
                    size: 48,
                  ),
                )
              ],
            )
          ]),
        )));
  }
}
