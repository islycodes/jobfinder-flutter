import 'package:flutter/material.dart';

import 'loremIpsum.dart';

class TelaVagaBookmark extends StatelessWidget {
  final bool isSelected = false;

  final bool isInitial = true;

  const TelaVagaBookmark({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.grey),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
            minWidth: MediaQuery.of(context).size.width,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(children: [
                Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.square_rounded,
                          size: 140, color: Color.fromRGBO(217, 217, 217, 1)),
                      Text('Nome da vaga',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      Text('Nome da empresa - Modalidade',
                          style: TextStyle(fontSize: 14, color: Colors.black)),
                    ]),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                      style: isSelected || isInitial
                          ? ElevatedButton.styleFrom(
                              minimumSize: Size(120, 38),
                              backgroundColor: Color.fromRGBO(205, 121, 106, 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ))
                          : null,
                      child: Text('Descrição',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      onPressed: () {},
                    ),
                    TextButton(
                      style: isSelected
                          ? ElevatedButton.styleFrom(
                              minimumSize: Size(120, 38),
                              backgroundColor: Color.fromRGBO(205, 121, 106, 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ))
                          : null,
                      child: Text('Empresa',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      onPressed: () {},
                    ),
                    TextButton(
                      style: isSelected
                          ? ElevatedButton.styleFrom(
                              minimumSize: Size(120, 38),
                              backgroundColor: Color.fromRGBO(205, 121, 106, 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ))
                          : null,
                      child: Text('Contato',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      onPressed: () {},
                    ),
                  ],
                )
              ]),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  'Informações sobre a vaga',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 15),
                Text(loremIpsum)
              ]),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  'Atividades',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 15),
                Text('• ' + loremIpsum),
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(74, 74),
                        backgroundColor: Color.fromRGBO(205, 121, 106, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        )),
                    child: Icon(
                      Icons.bookmark_remove,
                      color: Colors.white,
                      size: 48,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        minimumSize:
                            Size(MediaQuery.of(context).size.width - 130, 74),
                        backgroundColor: Colors.grey.shade300,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        )),
                    child: Text('Aplicado',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey.shade700,
                            fontWeight: FontWeight.bold)),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
