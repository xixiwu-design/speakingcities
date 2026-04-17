import 'package:flutter/material.dart';
import 'package:speakingcities/Home.dart';

import '../components/SetFoto.dart';
import '../components/fotoFunete.dart';
import '../components/Titulo.dart';
import '../components/Texto.dart';

class valorPage extends StatelessWidget {
  const valorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Stack(
            children: [
              SizedBox(child: Fotofunete(URL: "lib/images/foto4.jpg")),
              Titulo(text: "Sydney – English-speaking community"),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 700,
                      height: 400,
                      child: Column(
                        children: [
                          Texto(text: "Customs"),
                          Texto(text: "Relaxed and informal lifestyle.Many outdoor activities (beach, BBQs, sports).Social life in cafés, pubs, and friends’ gatherings.Use of humor and irony in conversation."),
                          Texto(text: "Values and beliefs"),
                          Texto(text: "Equality between people (regardless of status).Respect and good social behavior.Multiculturalism and acceptance of diversity.Independence and personal responsibility."),
                           Texto(text: "Social norms"),
                            Texto(text: "Being polite (saying “please” and “thanks”).Respecting personal space.Queuing and being punctual.Avoiding loud or aggressive behavior in public."),
                        ],
                      ),
                    ),
                    SetFoto(url: "lib/images/castum.jpg", height: 400),
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
