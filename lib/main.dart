import 'package:flutter/material.dart';

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
      home: Scaffold(
        body: Container(
          child: Stack(
            children: [

             
                SizedBox(child: Fotofunete(URL: "lib/images/foto5.jpg")),
              


               Center(
                 child: SetFoto(
                    url: "lib/images/foto4.jpg",
                    height: 200,
                  ),
               ),
              

            ],
          ),
        ),
          ),
      );
    
  }
}