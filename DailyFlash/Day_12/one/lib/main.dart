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
          child: Padding(
            padding:const  EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              obscureText: true,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                suffixIcon: GestureDetector(
                  onTap: () {
                    Icon(Icons.eye)

                  },
                  child: const Icon(
                    Icons.remove_red_eye,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
