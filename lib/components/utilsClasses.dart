import 'package:cloud_firestore/cloud_firestore.dart';

class Empresa {
  late final String name;
  late final String description;
  late final String contact;
  late final String location;

  Empresa(
    this.name,
    this.description,
    this.contact,
    this.location,
  );
}

class Vaga {
  final String id;
  final bool active;
  final Timestamp creation_date;
  final String description;
  final String model;
  final String title;
  final String companyName;
  final String companyDescription;
  final String companyContact;
  final String companyAddress;

  Vaga(
    this.id,
    this.active,
    this.title,
    this.creation_date,
    this.description,
    this.model,
    this.companyName,
    this.companyDescription,
    this.companyContact,
    this.companyAddress,
  );
}
