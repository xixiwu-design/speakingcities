import 'package:flutter/material.dart';
import 'dart:ui';

class Fotofunete extends StatelessWidget {
  final String URL;

  const Fotofunete({super.key, required this.URL});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox.expand(
          child: Image.asset(
            URL,
            fit: BoxFit.cover,
          ),
        ),

        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 5),
          child: Container(
            color: const Color.fromARGB(255, 95, 93, 104).withOpacity(0.3),
          ),
        ),
      ],
    );
  }
}