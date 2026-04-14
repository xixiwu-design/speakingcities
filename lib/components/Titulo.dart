import 'package:flutter/material.dart';

class Titulo extends StatelessWidget {
  const Titulo({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,

      child: Center(
        child: Text(
        text,style: TextStyle(
          fontSize: 60, 
      fontWeight: FontWeight.bold,
      color: Color.fromARGB(255, 255, 255, 255),
      ),
      )));
  }
}