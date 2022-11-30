import 'package:flutter/material.dart';

class ContatoOption extends StatelessWidget {
  final String contact;
  const ContatoOption({required this.contact});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Informações sobre a empresa',
            style: TextStyle(
                fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 15),
          Text(this.contact)
        ],
      ),
    );
  }
}
