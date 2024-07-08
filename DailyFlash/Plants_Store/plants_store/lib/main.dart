import 'dart:ui';
import 'package:plants_store/Login.dart';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: GetStarted(),
    );
  }
}

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(251, 247, 248, 1),
        body: Padding(
          padding: const EdgeInsets.only(top: 45),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 44),
                child: Container(
                  height: 464,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          "assets/3af97d728934d9da1f37e8707df89cfa.png"),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  bottom: 30,
                ),
                width: 250,
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Enjoy your",
                      style: GoogleFonts.poppins(
                        fontSize: 34.22,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(47, 47, 47, 1),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "life with ",
                          style: GoogleFonts.poppins(
                            fontSize: 34.22,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(47, 47, 47, 1),
                          ),
                        ),
                        Text(
                          "Plants",
                          style: GoogleFonts.poppins(
                            fontSize: 34.22,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(47, 47, 47, 1),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Login()));
                },
                child: Container(
                  width: 320,
                  height: 50,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromRGBO(124, 180, 70, 1),
                          Color.fromRGBO(62, 102, 24, 1),
                        ],
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.15),
                            offset: Offset(0, 20),
                            blurRadius: 40,
                            spreadRadius: 0)
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Get Started >",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.rubik(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: const Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
