import 'package:flutter/material.dart';

class Assignment8 extends StatelessWidget {
  const Assignment8({super.key});

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
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 5,
                        color: Colors.red,
                      ),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
