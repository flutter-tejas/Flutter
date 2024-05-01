import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              border: Border.all(
                color: Colors.black,
                width: 5,
              ),
              gradient: const RadialGradient(
                stops: [0.3, 0.5, 0.8, 0.96],
                colors: [
                  Color.fromARGB(255, 205, 28, 15),
                  Color.fromARGB(255, 63, 232, 69),
                  Color.fromARGB(255, 209, 201, 130),
                  Colors.black,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
