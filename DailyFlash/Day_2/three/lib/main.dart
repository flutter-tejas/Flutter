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
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.green,
                border: Border.all(color: Colors.red, width: 3),
                borderRadius:
                    const BorderRadius.only(topRight: Radius.circular(20)),
              )),
        ),
      ),
    );
  }
}
