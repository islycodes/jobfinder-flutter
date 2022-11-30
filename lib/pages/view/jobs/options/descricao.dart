import 'package:flutter/material.dart';

class DescricaoOption extends StatelessWidget {
  final String description;
  const DescricaoOption({required this.description});

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
          Text(this.description)
        ]),
        // SizedBox(
        //   height: 30,
        // ),
        // Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        //   Text(
        //     'Atividades',
        //     style: TextStyle(
        //         fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
        //   ),
        //   SizedBox(height: 15),
        //   Text('• ' + loremIpsum),
        // ]),
      ],
    );
  }
}
