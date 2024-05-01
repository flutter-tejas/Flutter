import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Bottomsheet(),
    );
  }
}

class Bottomsheet extends StatefulWidget {
  const Bottomsheet({super.key});

  @override
  State<Bottomsheet> createState() => _BottomsheetState();
}

class _BottomsheetState extends State<Bottomsheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 72, 216, 108),
        title: const Text("BottomSheet"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              backgroundColor: const Color.fromRGBO(248, 248, 248, 1),
              context: context,
              builder: (BuildContext context) {
                return Column(children: [
                  Text(
                    "Create To-Do List",
                    style: GoogleFonts.quicksand(
                        fontSize: 22, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Title",
                    style: GoogleFonts.quicksand(
                      color: const Color.fromRGBO(0, 139, 148, 1),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Description",
                    style: GoogleFonts.quicksand(
                      color: const Color.fromRGBO(0, 139, 148, 1),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Date",
                    style: GoogleFonts.quicksand(
                      color: const Color.fromRGBO(0, 139, 148, 1),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 50,
                    width: 300,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Submit",
                        style: GoogleFonts.inter(
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  )
                ]);
              });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
