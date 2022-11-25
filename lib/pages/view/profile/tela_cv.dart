import 'package:flutter/material.dart';

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
        centerTitle: true,
        title: Text('MEU CURRÍCULO'),
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
          height: (MediaQuery.of(context).size.height - 150),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  SizedBox(height: 30),
                  Container(
                    height: 400,
                    width: 300,
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
                  SizedBox(height: 40),
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
                                      Color.fromRGBO(205, 121, 106, 1),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  )),
                              child: Icon(
                                Icons.file_upload,
                                color: Colors.white,
                                size: 48,
                              ),
                            ),
                            SizedBox(width: 20),
                            Container(
                              width: (MediaQuery.of(context).size.width) - 150,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      minimumSize: Size(10, 74),
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
                            )
                          ]),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
