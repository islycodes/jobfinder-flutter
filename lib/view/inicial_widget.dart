import 'package:flutter/material.dart';

class InicialWidget extends StatelessWidget {

  final String foto;

  const InicialWidget(this.foto, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //widget para com que a imagem da tela inicial ocupe toda tela do dispositivo.
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.fromLTRB(0, 10, 0, 2),
      width: MediaQuery.of(context).size.width,
      height: 500,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Image.asset('lib/images/$foto'),
          ),
        ],
      ),
    );
  }
}
