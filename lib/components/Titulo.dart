import 'package:flutter/material.dart';

class Titulo extends StatelessWidget {
  const Titulo({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,

      child: Center(
        child: Text(
        text,style: TextStyle(
          fontSize: 42, 
      fontWeight: FontWeight.bold,
      color: Color.fromARGB(255, 255, 255, 255),
      ),
      )));
  }
}