import 'package:flutter/material.dart';
import 'package:speakingcities/components/FotoFunete.dart';
import 'package:speakingcities/components/SetFoto.dart';
import 'package:speakingcities/components/Titulo.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Stack(
            children: [
              SizedBox(child: Fotofunete(URL: "lib/images/foto5.jpg")),
              Center(
                child: SetFoto(url: "lib/images/foto4.jpg", height: 200),
              ),
             
                        
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
