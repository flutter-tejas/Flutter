import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Five(),
    );
  }
}

class Five extends StatefulWidget {
  const Five({super.key});

  @override
  State<Five> createState() => _FiveState();
}

class _FiveState extends State<Five> {
  Color container1Color = Colors.white;
  Color container2Color = Colors.white;
  Color container3Color = Colors.white;

  void changeColor(int containerNumber) {
    setState(() {
      if (containerNumber == 1) {
        container1Color = Colors.red;
        container2Color = Colors.white;
        container3Color = Colors.white;
      } else if (containerNumber == 2) {
        container1Color = Colors.white;
        container2Color = Colors.red;
        container3Color = Colors.white;
      } else if (containerNumber == 3) {
        container1Color = Colors.white;
        container2Color = Colors.white;
        container3Color = Colors.red;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                changeColor(1);
              },
              child: Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: container1Color,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                changeColor(2);
              },
              child: Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: container2Color,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                changeColor(3);
              },
              child: Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: container3Color,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
