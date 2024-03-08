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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
              Container(
                height: 80,
                width: 80,
                color: Colors.blue,
              ),
              Container(
                height: 70,
                width: 80,
                color: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
