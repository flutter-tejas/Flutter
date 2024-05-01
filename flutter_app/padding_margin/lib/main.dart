import 'package:flutter/material.dart';
import 'package:padding_margin/Padding1.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Padding1(),
    );
  }
}
