import 'package:cloud_firestore/cloud_firestore.dart';

class Vaga {
  final bool active;

  final Timestamp creation_date;
  final String description;
  final String model;
  final String title;

  Vaga(this.active, this.creation_date, this.description, this.model,
      this.title);
}
