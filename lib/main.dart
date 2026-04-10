import 'package:flutter/material.dart';

import 'components/fotoFunete.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Fotofunete(URL: "lib/images/foto1.jpg"),
        ),
      ),
    );
  }
}