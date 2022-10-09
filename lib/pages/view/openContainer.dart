import 'package:estagiotec/pages/view/perfil/tela_cv.dart';
import 'package:flutter/material.dart';
import 'package:animations/animations.dart';

class Transicao extends StatelessWidget {
  const Transicao({super.key});

  @override
  Widget build(BuildContext context) {
    ContainerTransitionType _containerTransitionType =
        ContainerTransitionType.fade;

    return OpenContainer(
      transitionType: _containerTransitionType,
      transitionDuration: Duration(seconds: 1),
      openBuilder: (context, _) => TelaCV(),
      closedElevation: 0,
      closedShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
          side: BorderSide(color: Colors.white, width: 1)),
      closedColor: Colors.blue,
      closedBuilder: (context, _) => Container(
        alignment: Alignment.center,
        width: 30,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Text(
            "Teste",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
