import 'package:flutter/material.dart';

import '../../../components/elevatedButtonGenerator.dart';

class TelaCV extends StatefulWidget {
  const TelaCV({super.key});

  @override
  State<TelaCV> createState() => _TelaCVState();
}

class _TelaCVState extends State<TelaCV> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: false,
      appBar: AppBar(
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
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Form(
              child: Column(children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ' Faça o upload do seu currículo para aumentar\n suas chances.',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: "Open Sans",
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 70),
                    Container(
                      height: 450,
                      width: 350,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(242, 241, 244, 1),
                      ),
                      child: Center(
                        child: Text(
                          'PRÉ-VISUALIZAÇÃO',
                          style: TextStyle(
                            fontFamily: "Open Sans",
                            fontSize: 24,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            height: 1,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 90,
                    ),

                    //botao de upload
                    Column(
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    minimumSize: Size(74, 74),
                                    backgroundColor:
                                        Color.fromRGBO(233, 74, 71, 1),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16),
                                    )),
                                child: Icon(
                                  Icons.file_upload,
                                  color: Colors.white,
                                  size: 48,
                                ),
                              ),
                              SizedBox(width: 10),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      minimumSize: Size(260, 74),
                                      backgroundColor:
                                          Color.fromRGBO(30, 40, 107, 1),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(16),
                                      )),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    'Salvar',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontFamily: 'OpenSans'),
                                  )),
                            ]),
                      ],
                    )
                  ],
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
