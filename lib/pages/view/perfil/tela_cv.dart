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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Você pode fazer o upload do seu currículo.',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: "Open Sans",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 300,
                      width: 300,
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
