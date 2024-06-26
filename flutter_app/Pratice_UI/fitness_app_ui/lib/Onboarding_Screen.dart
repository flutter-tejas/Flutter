import 'package:fitness_app_ui/BottomBar_Screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Onboarding(),
    );
  }
}

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(controller: _controller, children: [
        Stack(
          children: [
            Container(
              height: 844,
              width: 450,
            ),
            Image.asset(
              "assets/Image.png",
              height: 565,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Positioned(
              top: 372,
              child: Container(
                height: 193,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromRGBO(255, 255, 255, 0),
                      Color.fromRGBO(255, 255, 255, 1),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 612,
              left: 80,
              child: Container(
                height: 14,
                width: 71,
                color: const Color.fromRGBO(187, 242, 70, 1),
              ),
            ),
            Positioned(
              top: 574,
              left: 100,
              child: Text(
                '''Wherever You Are  ''',
                style: GoogleFonts.lato(
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Positioned(
              top: 596,
              left: 80,
              child: Text(
                '''Health Is Number One''',
                style: GoogleFonts.lato(
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Positioned(
              top: 656,
              left: 80,
              child: Text(
                "There is no instant way to a healthy life",
                style: GoogleFonts.lato(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(25, 33, 38, 0.5)),
              ),
            ),
            Positioned(
                top: 713,
                left: 180,
                child: SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                )),
            Positioned(
              top: 764,
              left: 40,
              child: SizedBox(
                height: 56,
                width: 350,
                child: ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                      Color.fromRGBO(25, 33, 38, 1),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const BottomBar();
                    }));
                  },
                  child: Text(
                    "Get Started",
                    style: GoogleFonts.lato(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: const Color.fromRGBO(255, 255, 255, 1)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
