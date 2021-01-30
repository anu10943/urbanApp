import 'package:flutter/material.dart';

class RegLogForm extends StatelessWidget {
  final String label;
  final String hint;
   RegLogForm({this.label, this.hint });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: label,
          hintText: hint,
        ),
         
      ),
    );
  }
}
