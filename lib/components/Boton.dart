import 'package:flutter/material.dart';

class Boton extends StatelessWidget {
  final String text;
  final Widget page;
  final Color color;

  const Boton({
    super.key,
    required this.text,
    required this.page,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
  padding: const EdgeInsets.all(30),
  child: SizedBox(
    width: 350,
    height: 100, 
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Text(
        text,
        style: const TextStyle(color: Color.fromARGB(255, 237, 239, 241), fontSize: 24),
      ),
    ),
  ),
);
  }
}