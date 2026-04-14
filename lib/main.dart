import 'package:flutter/material.dart';
import 'package:speakingcities/Home.dart';

import 'components/SetFoto.dart';
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
      home: HomePage(),
    );
  }
}
