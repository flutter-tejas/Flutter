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
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.purple,
                      filled: true,
                      hintText: "Enter Data",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)))),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(onPressed: () {}, child: const Text("Submit"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
