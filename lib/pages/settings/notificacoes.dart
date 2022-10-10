import 'package:flutter/material.dart';

class TelaNotificacoes extends StatefulWidget {
  const TelaNotificacoes({super.key});

  @override
  State<TelaNotificacoes> createState() => _TelaNotificacoesState();
}

class _TelaNotificacoesState extends State<TelaNotificacoes> {
  bool valCheck1 = false;
  bool valCheck2 = false;
  bool valCheck3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        extendBodyBehindAppBar: false,
        appBar: AppBar(
          centerTitle: true,
          title: Text('NOTIFICAÇÕES'),
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
          height: MediaQuery.of(context).size.height - 105,
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                        'O aplicativo poderá enviar notificações importantes \nsobre suas inscrições.',
                        style: TextStyle(fontSize: 14, color: Colors.black)),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text('Desejo ser notificado quando:',
                        style: TextStyle(fontSize: 18, color: Colors.black)),
                  ],
                ),
                SizedBox(height: 10),
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
                    Text('Uma nova vaga for publicada'),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        activeColor: Color.fromRGBO(30, 40, 107, 1),
                        value: valCheck2,
                        onChanged: (bool? value) {
                          setState(() {
                            valCheck2 = value!;
                          });
                        }),
                    Text('Minhas vagas salvas sofrerem alterações'),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        activeColor: Color.fromRGBO(30, 40, 107, 1),
                        value: valCheck3,
                        onChanged: (bool? value) {
                          setState(() {
                            valCheck3 = value!;
                          });
                        }),
                    Text('A vaga que eu apliquei for encerrada'),
                  ],
                ),
              ]),
              //botao
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  valCheck1 || valCheck2 || valCheck3
                      ? ElevatedButton(
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
                      : Container()
                ],
              )
            ],
          ),
        )));
  }
}
