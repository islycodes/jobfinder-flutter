import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../components/campoSenha.dart';
import '../../../components/campoTexto.dart';
import '../../../controller/login_controller.dart';

class TelaCadastro extends StatefulWidget {
  const TelaCadastro({Key? key}) : super(key: key);

  @override
  State<TelaCadastro> createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> {
  var txtNome = TextEditingController();

  var txtEmail = TextEditingController();
  var txtSenha = TextEditingController();
  bool valCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        extendBodyBehindAppBar: false,
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
            // Status bar color
            statusBarColor: Colors.white,
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          toolbarHeight: 80,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new, color: Colors.grey),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.fromLTRB(30, 0, 30, 30),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 300,
                    height: 300,
                    child: Image.asset("lib/images/login-icon.png"),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Cadastro',
                          style: TextStyle(
                            color: Color.fromRGBO(85, 97, 250, 1),
                            fontSize: 24,
                            fontFamily: "Open Sans",
                            fontWeight: FontWeight.w700,
                          )),
                    ],
                  ),
                  Form(
                      child: (Column(
                    children: [
                      campoTexto('Nome', txtNome, Icons.person),
                      campoTexto('Email', txtEmail, Icons.alternate_email),
                      CampoSenha(rotulo: 'Senha', variavel: txtSenha),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: 20),
                          Row(
                            children: [
                              Checkbox(
                                  activeColor: Color.fromRGBO(30, 40, 107, 1),
                                  value: valCheck,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      valCheck = value!;
                                    });
                                  }),
                              Text(
                                  'Declaro que li e aceito os termos & condições'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ))),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(371, 66),
                          backgroundColor: valCheck
                              ? Color.fromRGBO(30, 40, 107, 1)
                              : Colors.grey.shade400,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          )),
                      onPressed: () {
                        if (valCheck) {
                          LoginController().criarConta(context, txtNome.text,
                              txtEmail.text, txtSenha.text);
                        }
                      },
                      child: Text(
                        'Cadastrar',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ) // botao cadastrar
                      ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Já possui uma conta?'),
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'telaLogin');
                          },
                          child: Text('Entrar'))
                    ],
                  )
                ]),
          ),
        ));
  }

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }
}
