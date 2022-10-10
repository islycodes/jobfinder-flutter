import 'package:flutter/material.dart';


class TelaSobreoAplicativo extends StatefulWidget {
  const TelaSobreoAplicativo({super.key});

  @override
  State<TelaSobreoAplicativo> createState() => _TelaSobreoAplicativoState();
}

class _TelaSobreoAplicativoState extends State<TelaSobreoAplicativo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text('SOBRE O APLICATIVO'),
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
    );
  }
}
