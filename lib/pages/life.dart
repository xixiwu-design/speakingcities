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
            SizedBox(
              child: Fotofunete(URL: "lib/images/foto2.jpg"),
            ),

            Titulo(text: "Life in Sydney"),

            Positioned.fill(
              child: Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Center(
                  child: SizedBox(
                    height: 650,
                    child: Container(
                      width: 950,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(78, 43, 36, 71).withOpacity(0.5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(50),
                        child: Column(
                          children: [
                            
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Natural environment",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Texto(text: " - Large natural reserves around the city"),
                                      Texto(text: " - Easy access to wildlife (parrots, koalas in nearby areas)"),
                            
                                      SizedBox(height: 20),
                            
                                      Text(
                                        "City life",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Texto(text: " - A modern city"),
                                      Texto(text: " - High quality of life"),
                                    ],
                                  ),
                                ),
                            
                                SizedBox(width: 20),
                            
                                SetFoto(
                                  url: "lib/images/life.webp",
                                  height: 250,
                                ),
                              ],
                            ),

                            SizedBox(height: 50),

                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                
                                SetFoto(
                                  url: "lib/images/work.jpg",
                                  height: 250,
                                ),
                            
                                SizedBox(width: 100),
                            
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Social environment",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Texto(text: " - Multicultural society"),
                                      Texto(text: " - Friendly and inclusive people"),
                            
                                      SizedBox(height: 20),
                            
                                      Text(
                                        "Study & work",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Texto(text: " - Many opportunities in IT industry"),
                                      Texto(text: " - International working environment"),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // BACK BUTTON
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
                color: Color.fromARGB(146, 27, 46, 97),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        width: 60,
                        height: 40,
                        child: Icon(
                          Icons.arrow_left_rounded,
                          color: Color.fromARGB(255, 136, 74, 160),
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