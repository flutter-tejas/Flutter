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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: const EdgeInsets.all(5),
                  height: 200,
                  width: 150,
                  color: Colors.amber,
                ),
                Container(
                  margin: const EdgeInsets.all(5),
                  height: 200,
                  width: 150,
                  color: Colors.red,
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.all(5),
              height: 150,
              width: 350,
              color: Colors.green,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: const EdgeInsets.all(5),
                  height: 200,
                  width: 150,
                  color: Colors.purple,
                ),
                Container(
                  margin: const EdgeInsets.all(5),
                  height: 200,
                  width: 150,
                  color: Colors.blue,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
