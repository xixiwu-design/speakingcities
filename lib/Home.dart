import 'package:flutter/material.dart';
import 'package:speakingcities/components/Boton.dart';
import 'package:speakingcities/components/FotoFunete.dart';
import 'package:speakingcities/components/SetFoto.dart';
import 'package:speakingcities/components/Titulo.dart';
import 'package:speakingcities/fileexample.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Stack(
            children: [
              SizedBox(child: Fotofunete(URL: "lib/images/foto5.jpg")),

              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Boton(text: "Community Culture", page: ejemPage(), color: const Color.fromARGB(122, 114, 48, 48)),
                       Boton(text: "Regional English", page: ejemPage(), color: const Color.fromARGB(122, 114, 48, 48)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Boton(text: "IT industry", page: ejemPage(), color: const Color.fromARGB(122, 114, 48, 48)),
                       Boton(text: "Community Life", page: ejemPage(), color: const Color.fromARGB(122, 114, 48, 48)),
                    ],
                  ),
                ],
              ),

                        Titulo(text: "Sydney"),






























              Container(
                height: 50,
                width: double.infinity,
                color: Color.fromARGB(146, 27, 40, 97),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Container(
                        width: 60,
                        height: 40,
                        child: Icon(
                          Icons.home,
                          color: Color.fromARGB(255, 36, 42, 134),
                          size: 30,
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
             
            ],
          ),
        ),
      );
  }
}
