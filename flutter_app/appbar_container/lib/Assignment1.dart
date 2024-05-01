import 'package:flutter/material.dart';

class Assignment1 extends StatelessWidget {
  const Assignment1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text(
          "Core2web",
        ),
        actions: const [
          Icon(
            Icons.access_alarm,
          ),
          Icon(
            Icons.face,
          ),
        ],
      ),
    );
  }
}
