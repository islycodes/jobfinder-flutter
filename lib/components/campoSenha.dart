import 'package:flutter/material.dart';

class CampoSenha extends StatefulWidget {
  final String rotulo;
  final TextEditingController variavel;

  const CampoSenha({super.key, required this.rotulo, required this.variavel});

  @override
  State<CampoSenha> createState() => _CampoSenhaState(rotulo: this.rotulo);
}

class _CampoSenhaState extends State<CampoSenha> {
  var rotulo;

  final textFieldFocusNode = FocusNode();

  bool _obscured = true;
  _CampoSenhaState({required this.rotulo});

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.visiblePassword,
      obscureText: _obscured,
      focusNode: textFieldFocusNode,
      cursorColor: Color.fromRGBO(78, 79, 249, 1),
      textAlignVertical: TextAlignVertical.center,
      style: TextStyle(
        fontSize: 16,
        color: Colors.black,
      ),
      decoration: InputDecoration(
        floatingLabelBehavior:
            FloatingLabelBehavior.never, //Hides label on focus or if filled
        labelText: 'rotulo',
        labelText: this.rotulo,
        prefixIcon: Icon(
          Icons.lock,
          size: 24,
        ),
        // contentPadding: EdgeInsets.fromLTRB(0, 0, 4, 0),
        suffixIcon: GestureDetector(
          onTap: _toggleObscured,
          child: Icon(
            _obscured ? Icons.visibility_rounded : Icons.visibility_off_rounded,
            size: 24,
          ),
        ),
      ),
    );
  }

  void _toggleObscured() {
    setState(() {
      _obscured = !_obscured;
      if (textFieldFocusNode.hasPrimaryFocus)
        return; // If focus is on text field, dont unfocus
      textFieldFocusNode.canRequestFocus =
          false; // Prevents focus if tap on eye
    });
  }
}
