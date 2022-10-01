import 'package:flutter/material.dart';

class TelaVaga extends StatelessWidget {
  const TelaVaga({super.key});

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
    ));
  }
}
