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
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.red, width: 5),
              borderRadius: const BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            child: const Center(
              child: Text(
                "Text",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
