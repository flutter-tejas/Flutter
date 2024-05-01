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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(205, 218, 218, 1),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 70,
          left: 20,
          right: 20,
        ),
        child: Column(
          children: [
            const Row(
              children: [
                Icon(Icons.menu),
                Spacer(),
                Icon(Icons.notification_add),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome to New",
                  style: GoogleFonts.jost(
                    color: const Color.fromRGBO(0, 0, 0, 1),
                    fontWeight: FontWeight.w300,
                    fontSize: 26.99,
                  ),
                ),
                Text(
                  "Educourse",
                  style: GoogleFonts.jost(
                    color: const Color.fromRGBO(0, 0, 0, 1),
                    fontWeight: FontWeight.w700,
                    fontSize: 37,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                TextField(
                  decoration: InputDecoration(
                    fillColor: const Color.fromRGBO(255, 255, 255, 1),
                    filled: true,
                    suffixIcon: const Icon(Icons.search),
                    hintText: "    Enter your Keyword",
                    hintStyle: GoogleFonts.inter(
                      color: const Color.fromRGBO(143, 143, 143, 1),
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28.5),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28.5),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
            Expanded(
              child: Container(
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
                    Text(
                      "Course For You",
                      style: GoogleFonts.jost(
                        color: const Color.fromRGBO(0, 0, 0, 1),
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            height: 242,
                            width: 190,
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromRGBO(197, 4, 98, 1),
                                  Color.fromRGBO(80, 3, 113, 1)
                                ],
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(14),
                              ),
                            ),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "UX Designer from Scratch.",
                                    style: GoogleFonts.jost(
                                      color: const Color.fromRGBO(
                                          255, 255, 255, 1),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                                Image.asset("assets/7010826_3255307.png")
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Container(
                            height: 242,
                            width: 190,
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromRGBO(0, 77, 228, 1),
                                  Color.fromRGBO(1, 47, 135, 1)
                                ],
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(14),
                              ),
                            ),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Design Thinking The Beginner",
                                    style: GoogleFonts.jost(
                                      color: const Color.fromRGBO(
                                          255, 255, 255, 1),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                                Image.asset("assets/Objects.png")
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Course By Category",
                      style: GoogleFonts.jost(
                        color: const Color.fromRGBO(0, 0, 0, 1),
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(25, 0, 56, 1),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(14),
                                ),
                              ),
                              height: 36,
                              width: 36,
                              child: Image.asset(
                                "assets/Traced Image.png",
                                height: 20,
                                width: 20,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text("UI/UX"),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(25, 0, 56, 1),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(14),
                                ),
                              ),
                              height: 36,
                              width: 36,
                              child: Image.asset(
                                "assets/Traced Image (1).png",
                                height: 20,
                                width: 20,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text("VISUAL"),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(25, 0, 56, 1),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(14),
                                ),
                              ),
                              height: 36,
                              width: 36,
                              child: Image.asset(
                                "assets/Traced Image (2).png",
                                height: 20,
                                width: 20,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text("ILLUSTRATION"),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(25, 0, 56, 1),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(14),
                                ),
                              ),
                              height: 36,
                              width: 36,
                              child: Image.asset(
                                "assets/Traced Image (3).png",
                                height: 20,
                                width: 20,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text("PHOTO"),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
