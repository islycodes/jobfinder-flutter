import 'package:cloud_firestore/cloud_firestore.dart';

class VagasController {
  void candidatar(vagaId, alunoId) {
    FirebaseFirestore.instance.collection('alunos').doc(alunoId).update({
      "vagas": FieldValue.arrayUnion([vagaId])
    });
  }

  DocumentReference getEmpresaDaVaga(String empresaId) {
    return FirebaseFirestore.instance
        .collection('empresas')
        .doc(empresaId.split('/')[1]);
  }

  listar() {
    return FirebaseFirestore.instance
        .collection('vagas')
        .where('active', isEqualTo: true);
  }

  DocumentReference listarPorId(String vagaId) {
    return FirebaseFirestore.instance.collection('vagas').doc(vagaId);
  }
}
