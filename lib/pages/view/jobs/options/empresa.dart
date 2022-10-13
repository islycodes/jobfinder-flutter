import 'package:flutter/material.dart';

class EmpresaOption extends StatelessWidget {
  final String informacoesEmpresaText = '''Empresa A S/A

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.''';

  const EmpresaOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Informações sobre a empresa',
            style: TextStyle(
                fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 15),
          Text(informacoesEmpresaText)
        ]),
        SizedBox(
          height: 25,
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Localização',
            style: TextStyle(
                fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 15),
          Text('Lorem ipsum dolor, 359 - São Paulo, Brazil'),
          SizedBox(height: 15),
        ]),
        Image.asset(
          "lib/images/maps.png",
        ),
      ],
    );
  }
}
