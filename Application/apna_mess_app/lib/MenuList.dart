import 'package:apna_mess_app/mess.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuList extends StatelessWidget {
  final MessModelClass messCard;
  const MenuList({Key? key, required this.messCard}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 235, 75, 185),
        title: const Text('Menu List'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.red, Colors.pink, Colors.purple],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 30,
            left: 30,
            right: 30,
            bottom: 30,
          ),
          child: Column(
            children: [
              const Row(
                children: [],
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 0, 0, 0),
                        offset: Offset.zero,
                        spreadRadius: 10.0,
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 30,
                        width: 320,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 239, 221, 221),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 217, 118, 143),
                              offset: Offset.zero,
                              spreadRadius: 5.0,
                              blurRadius: 20,
                            ),
                          ],
                        ),
                        child: Text(
                          textAlign: TextAlign.center,
                          "WelCome to ${messCard.messName}",
                          style: GoogleFonts.quicksand(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 200,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 239, 221, 221),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 217, 118, 143),
                              offset: Offset.zero,
                              spreadRadius: 5.0,
                              blurRadius: 20,
                            ),
                          ],
                        ),
                        child: const Text(
                          textAlign: TextAlign.center,
                          "Todays Menu",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Text(
                        "Menu 1:${messCard.menu1}",
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "Menu 2:${messCard.menu2}",
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "Menu 3:${messCard.menu3}",
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "Menu 4:${messCard.menu4}",
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
