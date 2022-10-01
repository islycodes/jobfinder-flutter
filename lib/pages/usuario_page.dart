// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class UsuarioPage extends StatefulWidget {
  const UsuarioPage({Key? key}) : super(key: key);

  @override
  State<UsuarioPage> createState() => _UsuarioPageState();
}

class _UsuarioPageState extends State<UsuarioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Usuários'),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent.shade700,
      ),
      backgroundColor: Colors.blueGrey.shade100,
      body: Padding(
        padding: EdgeInsets.all(10),
      ),
    );
  }
}
