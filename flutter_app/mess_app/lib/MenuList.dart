import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mess_app/main.dart';

class MenuList extends StatelessWidget {
  final List messCard;
  const MenuList({Key? key, required this.messCard}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 235, 75, 185),
        title: Text('Menu List'),
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
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "Todays Menu",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                      Container(
                        height: 150,
                        width: 200,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                          ),
                        ),
                        child: const Text(
                          "Menu 1:",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Container(
                        height: 150,
                        width: 200,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                          ),
                        ),
                        child: const Text(
                          "Menu 2:",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Container(
                        height: 150,
                        width: 200,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                          ),
                        ),
                        child: const Text(
                          "Menu 3:",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Container(
                        height: 150,
                        width: 200,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                          ),
                        ),
                        child: const Text(
                          "Menu 4:",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
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
      ),
    );
  }
}
