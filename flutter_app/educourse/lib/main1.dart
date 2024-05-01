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
      home: Educourse(),
    );
  }
}

class Educourse extends StatefulWidget {
  const Educourse({super.key});

  @override
  State<Educourse> createState() => _EducourseState();
}

class _EducourseState extends State<Educourse> {
  List intro = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(197, 4, 98, 1),
            Color.fromRGBO(80, 3, 113, 1)
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 50,
          left: 35,
          right: 35,
        ),
        child: Column(
          children: [
            const Row(
              children: [
                Icon(
                  Icons.arrow_back,
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Column(
              children: [
                Text(
                  "UX Designer from Scratch.",
                  style: GoogleFonts.jost(
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    fontWeight: FontWeight.w500,
                    fontSize: 32.66,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Basic guideline & tips & tricks for how to become a UX designer easily.",
                  style: GoogleFonts.jost(
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Image.asset("assets/Group 4912.png"),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Author:",
                      style: GoogleFonts.jost(
                        color: const Color.fromRGBO(190, 154, 197, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "Jonny",
                      style: GoogleFonts.jost(
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "4.8",
                      style: GoogleFonts.jost(
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "(20 review)",
                      style: GoogleFonts.jost(
                        color: const Color.fromRGBO(190, 154, 197, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(
                    40,
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ListView.builder(
                    itemCount: intro.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 16,
                        ),
                        child: Container(
                          height: 70,
                          width: 300,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(255, 255, 255, 1),
                            boxShadow: const [
                              BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.15),
                                  offset: Offset(0, 8),
                                  blurRadius: 40),
                            ],
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      );
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
