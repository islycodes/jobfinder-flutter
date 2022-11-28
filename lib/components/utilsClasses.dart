import 'package:cloud_firestore/cloud_firestore.dart';

class Empresa {
  final String name;
  final String description;
  final String contact;
  final GeoPoint location;

  Empresa(this.name, this.description, this.contact, this.location);
}

class Vaga {
  final bool active;

  final Timestamp creation_date;
  final String description;
  final String model;
  final String title;
  final DocumentReference company;
  Vaga(this.active, this.creation_date, this.description, this.model,
      this.title, this.company);
}
