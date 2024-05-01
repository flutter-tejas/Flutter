import 'package:flutter/material.dart';

class Assignment11 extends StatelessWidget {
  const Assignment11({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Assignment 11"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.orange,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.orange,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.amber,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
