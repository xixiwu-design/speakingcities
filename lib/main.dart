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

              Center(child: SetFoto(url: "lib/images/foto4.jpg", height: 200)),
              
              
              
              Container(
                height: 50,
                width: double.infinity,               
                color: Color.fromARGB(146, 30, 52, 150),
                child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Icon(Icons.account_box_sharp),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(188, 12, 23, 75),
                        border: Border.all(
                          color: Color.fromARGB(146, 209, 213, 231),
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
      ),
    );
  }
}
