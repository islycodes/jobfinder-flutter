import 'package:cloud_firestore/cloud_firestore.dart';

class VagasController {
  void candidatar(vagaId, alunoId) {
    FirebaseFirestore.instance.collection('alunos').doc(alunoId).update({
      "vagas": FieldValue.arrayUnion([vagaId])
    });
  }

  listar() {
    return FirebaseFirestore.instance.collection('vagas');
    // .where('active', isEqualTo: true);
  }
}
