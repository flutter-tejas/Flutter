import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Three(),
    );
  }
}

class Three extends StatefulWidget {
  const Three({super.key});

  @override
  State<Three> createState() => _ThreeState();
}

class _ThreeState extends State<Three> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 50,
          width: 200,
          child: FloatingActionButton(
            onPressed: () {},
            child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Tejas Jawale"),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.person_2_outlined),
                ]),
          ),
        ),
      ),
    );
  }
}
