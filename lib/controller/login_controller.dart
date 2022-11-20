import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../components/mensagensPopup.dart';

class LoginController {
  //
  // CRIAR CONTA
  //
  void criarConta(context, nome, email, senha) {
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: senha)
        .then((res) {
      //Armazenar o nome no Firestore
      FirebaseFirestore.instance.collection('alunos').add({
        "uid": res.user!.uid.toString(),
        "nome": nome,
        "email": email,
        "vagas": [],
      });

      sucesso(context, 'Usuário criado com sucesso.');
      Navigator.pop(context);
    }).catchError((e) {
      switch (e.code) {
        case 'email-already-in-use':
          erro(context, 'O email já foi cadastrado.');
          break;
        case 'invalid-email':
          erro(context, 'O email é inválido.');
          break;
        default:
          erro(context, e.code.toString());
      }
    });
  }

  //
  // ESQUECEU A SENHA
  //
  Future<void> esqueceuSenha(email) async {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
  }

  //
  // LOGIN DO USUÁRIO
  //
  void login(context, email, senha) {
    FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: senha)
        .then((res) {
      sucesso(context, 'Usuário autenticado com sucesso.');
      Navigator.pushReplacementNamed(context, 'telaMenuInicial');
    }).catchError((e) {
      switch (e.code) {
        case 'invalid-email':
          erro(context, 'O formato do email é inválido.');
          break;
        case 'user-not-found':
          erro(context, 'Usuário não encontrado.');
          break;
        case 'wrong-password':
          erro(context, 'Senha incorreta.');
          break;
        case 'unknown':
          erro(context, 'Erro desconhecido.');
          break;
        default:
          erro(context, e.code.toString());
      }
    });
  }

  //
  // LOGOUT
  //
  void logout() {
    FirebaseAuth.instance.signOut();
  }

  //
  // RETORNAR USUÁRIO LOGADO
  //
  Future<String> retornarUsuarioLogado() async {
    var uid = FirebaseAuth.instance.currentUser!.uid;
    var res;
    await FirebaseFirestore.instance
        .collection('alunos')
        .where('uid', isEqualTo: uid)
        .get()
        .then(
      (q) {
        if (q.docs.isNotEmpty) {
          res = q.docs[0].data()['nome'];
        } else {
          res = "";
        }
      },
    );
    return res;
  }
}
