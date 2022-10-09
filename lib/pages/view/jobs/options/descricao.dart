import 'package:flutter/material.dart';

import '../loremIpsum.dart';

class DescricaoOption extends StatelessWidget {
  const DescricaoOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Informações sobre a vaga',
            style: TextStyle(
                fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 15),
          Text(loremIpsum)
        ]),
        SizedBox(
          height: 30,
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Atividades',
            style: TextStyle(
                fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 15),
          Text('• ' + loremIpsum),
        ]),
      ],
    );
  }
}
