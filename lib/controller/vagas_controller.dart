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
    // dynamic res;
    // FirebaseFirestore.instance
    //     .collection('vagas')
    //     .where('active', isEqualTo: true)
    //     .get()
    //     .then((value) {
    //   print(value.docs[0].data()['company'].path);
    // });

    return FirebaseFirestore.instance
        .collection('vagas')
        .where('active', isEqualTo: true);
  }
}
