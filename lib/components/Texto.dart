import 'package:flutter/material.dart';

class Texto extends StatelessWidget {
  const Texto({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
    text,style: TextStyle(
      fontSize: 20, 
          color: Color.fromARGB(255, 255, 255, 255),
          ),
          );
  }
}