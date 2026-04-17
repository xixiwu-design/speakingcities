import 'package:flutter/material.dart';
import 'package:speakingcities/Home.dart';

import '../components/SetFoto.dart';
import '../components/fotoFunete.dart';
import '../components/Titulo.dart';
import '../components/Texto.dart';

class JobPage extends StatelessWidget {
  const JobPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            SizedBox(child: Fotofunete(URL: "lib/images/foto3.jpg")),
            Titulo(text: "Software Development Jobs in Sydney"),
            Positioned.fill(
              child: Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Center(
                  child: SizedBox(
                    height: 660,
                    child: Container(
                      width: 1000, 
                      decoration: BoxDecoration(
                        color: Color.fromARGB(78, 43, 36, 71).withOpacity(0.5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Common job positions in the IT industry:",
                                          style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold,
                                            color: const Color.fromARGB(
                                              255,
                                              255,
                                              255,
                                              255,
                                            ),
                                          ),
                                        ),
                                        Texto(text: "- Frontend Developer"),
                                        Texto(text: "- Backend Developer"),
                                        Texto(text: "- Full Stack Developer"),
                                        Texto(text: "- Mobile App Developer"),
                                        Texto(text: "- Data Analyst"),
                                        Texto(text: "- DevOps Engineer"),
                                      ],
                                    ),
                                    SizedBox(width: 70),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Characteristics:",
                                          style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold,
                                            color: const Color.fromARGB(
                                              255,
                                              255,
                                              255,
                                              255,
                                            ),
                                          ),
                                        ),
                                        Texto(text: "- Fast-growing IT industry"),
                                        Texto(text: "- Many startups"),
                                        Texto(text: "- Numerous international companies"),
                                        Texto(text: "- High salaries"),
                                      ],
                                    ),
                                  ],
                                ),
                                Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: SetFoto(
                                url: "lib/images/job.webp",
                                height: 330,
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
                color: Color.fromARGB(146, 48, 27, 97),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        width: 60,
                        height: 40,
                        child: Icon(
                          Icons.arrow_left_rounded,
                          color: Color.fromARGB(255, 70, 36, 134),
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
