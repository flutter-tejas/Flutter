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
        body: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              width: 60,
              height: 60,
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
              width: 60,
              height: 60,
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
              width: 60,
              height: 60,
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
              width: 60,
              height: 60,
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
              width: 60,
              height: 60,
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
          ],
        ),
      ),
    );
  }
}
