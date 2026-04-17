import 'package:flutter/material.dart';
import 'package:speakingcities/Home.dart';

import '../components/SetFoto.dart';
import '../components/fotoFunete.dart';
import '../components/Titulo.dart';
import '../components/Texto.dart';

class LifePage extends StatelessWidget {
  const LifePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Stack(
            children: [
              SizedBox(child: Fotofunete(URL: "lib/images/foto5.jpg")),
              Titulo(text: "Titulo"),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 300,
                      height: 200,
                      child: Column(
                        children: [
                          Texto(text: "Hola,dfffffffffffffffffffffffffffffffffffffffffffffff"),
                          Texto(text: "Es,effffffffffffffffffffffffffffff"),
                          Texto(text: "Uno"),
                          Texto(text: "Texto"),
                        ],
                      ),
                    ),
                    SetFoto(url: "lib/images/foto4.jpg", height: 200),
                  ],
                ),
              ),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  color: Color.fromARGB(146, 27, 40, 97),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          width: 60,
                          height: 40,
                          child: Icon(
                            Icons.arrow_left_rounded,
                            color: Color.fromARGB(255, 36, 42, 134),
                            size: 40,
                          ),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(144, 220, 222, 228),
                            border: Border.all(
                              color: Color.fromARGB(146, 197, 198, 204),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  }
}
