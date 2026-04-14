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
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 40),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
        },
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 40),
        
        ),
      ),
    );
  }
}