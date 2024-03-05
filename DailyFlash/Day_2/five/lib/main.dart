import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Five(),
        ),
      ),
    );
  }
}

class Five extends StatefulWidget {
  const Five({super.key});
  @override
  State<Five> createState() => _FiveState();
}

class _FiveState extends State<Five> {
  bool tapped = false;

  void _click() {
    setState(() {
      tapped = !tapped;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _click,
      child: Container(
        width: 300,
        height: 300,
        color: tapped ? Colors.blue : Colors.red,
        child: Center(
          child: Text(
            tapped ? 'Container Tapped' : 'Click Me',
            style: const TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
