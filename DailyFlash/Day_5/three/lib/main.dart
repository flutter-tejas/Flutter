import 'package:flutter/cupertino.dart';
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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSg5C1ZvRQN1S8wR6X3V3zNoxOAY6PTxWwiDA&usqp=CAU",
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(style: BorderStyle.solid),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.red,
                        offset: Offset(10, 10),
                        blurRadius: 5,
                        spreadRadius: 1),
                  ],
                ),
                child: const Text(
                  "Tejas Jawale",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
