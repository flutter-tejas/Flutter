import 'package:flutter/cupertino.dart';
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 6,
                    child: Container(
                      height: 100,
                      color: Colors.red,
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: 100,
                      color: Colors.purple,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 100,
                      color: Colors.greenAccent,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      height: 100,
                      color: Colors.red,
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      height: 100,
                      color: Colors.purple,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 100,
                      color: Colors.greenAccent,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 7,
                    child: Container(
                      height: 100,
                      color: Colors.red,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 100,
                      color: Colors.purple,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 100,
                      color: Colors.greenAccent,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
