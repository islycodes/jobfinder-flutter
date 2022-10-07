import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget {
  final DateTime? data;
  const DatePicker({super.key, required this.data});

  @override
  State<DatePicker> createState() => _DatePickerState(data: this.data);
}

class _DatePickerState extends State<DatePicker> {
  var data;
  _DatePickerState({required this.data});
  // DateTime date = DateTime(this.data);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        '${this.data.day}/${this.data.month}/${this.data.year}',
        style: TextStyle(fontSize: 16),
      ),
      const SizedBox(height: 16),
      ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Colors.grey.shade100),
        ),
        onPressed: () async {
          DateTime? newDate = await showDatePicker(
              //Adiciona as opçoes cancel e ok
              context: context,
              initialDate: this.data, //inicia pela data definida na linha 13
              firstDate: DateTime(1922),
              lastDate: DateTime(2003));

          if (newDate == null) return; //Se cancelar a operação recebe nulo

          //se o usuário clicar em ok, a data é salva
          setState(() => this.data = newDate);
        },
        child: Icon(Icons.calendar_month, color: Colors.black),
      )
    ]);
  }
}
