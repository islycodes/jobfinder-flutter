import 'dart:convert';
import 'package:http/http.dart';

import '../model/usuario.dart';
import 'api_repository.dart';

//Requisição de uma lista de usuários

class UsuarioRepository {
  Future<List<Usuario>> getUsuarios() async {
    try {
      var resposta = await get(
        Uri.parse(ApiRepository.USUARIOS),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );

      List<Usuario> lista = [];
      if (resposta.statusCode == 200) {
        final dados = await json.decode(resposta.body.toString());
        for (var item in dados["results"]) {
          lista.add(Usuario.fromJson(item));
        }
      }
      return lista;
    } catch (erro) {
      return [];
    }
  }
}
