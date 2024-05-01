import 'package:flutter/material.dart';

class Assignment6 extends StatelessWidget {
  const Assignment6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    color: Colors.deepPurpleAccent,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    color: Colors.deepOrangeAccent,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    color: Colors.deepPurple,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    color: Colors.deepOrange,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    color: Colors.yellow,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    color: Colors.blueGrey,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    color: Colors.blue,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    color: Colors.green,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    color: Colors.red,
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
