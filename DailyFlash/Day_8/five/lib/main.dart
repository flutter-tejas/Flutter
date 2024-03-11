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
        body: Padding(
            padding: EdgeInsets.all(20),
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.all(10),
                  height: 100,
                  width: 100,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          const Text("Title1"),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text("Give some description here"),
                        ],
                      ),
                      const SizedBox(
                        width: 70,
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.purple,
                          border: Border.all(color: Colors.black),
                        ),
                        child: const Icon(
                          Icons.add,
                        ),
                      ),
                    ],
                  ),
                );
              },
            )),
      ),
    );
  }
}
