import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Four(),
    );
  }
}

class Four extends StatefulWidget {
  const Four({super.key});

  @override
  State<Four> createState() => _FourState();
}

class _FourState extends State<Four> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 300,
          decoration: BoxDecoration(
              color: Colors.red,
              border: Border.all(
                color: Colors.yellow,
                width: 5,
              ),
              boxShadow: [
                BoxShadow(
                    color: Colors.black,
                    offset: Offset(0, -20),
                    blurRadius: 10),
              ]),
        ),
      ),
    );
  }
}
