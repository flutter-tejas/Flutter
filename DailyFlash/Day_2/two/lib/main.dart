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
            child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            padding: const EdgeInsets.all(10.0),
            width: 100,
            height: 100,
            decoration: const BoxDecoration(
              border: Border(
                left: BorderSide(
                  color: Colors.red,
                  width: 5,
                ),
              ),
            ),
            child: const Center(child: Text("Container")),
          ),
        )),
      ),
    );
  }
}
