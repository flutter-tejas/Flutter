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
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              gradient: LinearGradient(
                stops: [0.1, 0.4],
                colors: [
                  Colors.blue,
                  Colors.purple,
                ],
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.red,
                  offset: Offset(10, 10),
                ),
              ]),
        )),
      ),
    );
  }
}
