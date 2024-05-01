import 'package:flutter/material.dart';

class Assignment4 extends StatelessWidget {
  const Assignment4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                  color: Colors.blue,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
