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
        appBar: AppBar(
          backgroundColor: Colors.amberAccent,
        ),
        body: Column(
          children: [
            Container(
              child: Image.asset(
                "assets/dominos_buy1get1-min-min.png",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Pizza",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 40),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "A large circle of flat bread baked with cheese,tomatoes,and vegetables spread on top",
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 20),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
