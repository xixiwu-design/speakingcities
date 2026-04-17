import 'package:flutter/material.dart';
import 'package:speakingcities/Home.dart';

import '../components/SetFoto.dart';
import '../components/fotoFunete.dart';
import '../components/Titulo.dart';
import '../components/Texto.dart';

class LenguaPage extends StatelessWidget {
  const LenguaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            SizedBox(
              child: Fotofunete(URL: "lib/images/foto1.jpg"),
            ),

            Titulo(text: "Australian English in Sydney"),

            Positioned.fill(
              child: Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Center(
                  child: SizedBox(
                    height: 550,
                    child: Container(
                      width: 900,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(78, 36, 50, 71).withOpacity(0.5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 100,top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Australian English in Sydney",
                                style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                          
                              SizedBox(height: 15),
                          
                              Texto(
                                text:
                                    "     Australian English is informal, shortened, and very conversational.",
                              ),
                          
                              SizedBox(height: 40),
                          
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  
                                  SetFoto(
                                url: "lib/images/lengua.jpg",
                                height: 300,
                              ),
                              SizedBox(width: 100),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Vocabulary differences:",
                                        style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                       Texto(text: "  - arvo = afternoon"),
                              Texto(text: "  - brekkie = breakfast"),
                              Texto(text: "  - mate = friend"),
                              Texto(text: "  - sunnies = sunglasses"),
                              Texto(text: "  - servo = gas station"),
                                    ],
                                  ),
                                ],
                              ),
                          
                             
                          
                                                
                              SizedBox(height: 20),
                          
                              
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
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
                color: Color.fromARGB(146, 27, 60, 97),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        width: 60,
                        height: 40,
                        child: Icon(
                          Icons.arrow_left_rounded,
                          color: Color.fromARGB(255, 36, 59, 134),
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