import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

// Placemark placemarks = await placemarkFromCoordinates(this.location.latitude, this.location.longitude);
class EmpresaOption extends StatelessWidget {
  final String description;
  final GeoPoint location;
  const EmpresaOption({required this.description, required this.location});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Informações sobre a empresa',
            style: TextStyle(
                fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 15),
          Text(this.description)
        ]),
        SizedBox(
          height: 25,
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Localização',
            style: TextStyle(
                fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 15),
          Text(this.location.toString()),
          SizedBox(height: 15),
        ]),
        Image.asset(
          "lib/images/maps.png",
        ),
      ],
    );
  }
}
