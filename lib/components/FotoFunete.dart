import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/material.dart';

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
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            color: Colors.black.withOpacity(0.3),
          ),
        ),
      ],
    );
  }
}