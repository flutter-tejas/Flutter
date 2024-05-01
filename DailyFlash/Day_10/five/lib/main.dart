import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    Colors.blue,
                    Colors.purple,
                    Colors.green,
                  ],
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.red, offset: Offset(5, 5), blurRadius: 1)
                ]),
          ),
        ),
      ),
    );
  }
}
