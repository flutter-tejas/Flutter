import 'package:flutter/material.dart';

class Assignment7 extends StatelessWidget {
  const Assignment7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            Container(
              child: Image.network(
                "https://images.pexels.com/photos/33109/fall-autumn-red-season.jpg?auto=compress&cs=tinysrgb&w=800",
                width: 150,
                height: 150,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
              child: Image.network(
                "https://images.pexels.com/photos/33109/fall-autumn-red-season.jpg?auto=compress&cs=tinysrgb&w=800",
                width: 150,
                height: 150,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
              child: Image.network(
                "https://images.pexels.com/photos/33109/fall-autumn-red-season.jpg?auto=compress&cs=tinysrgb&w=800",
                width: 150,
                height: 150,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
              child: Image.network(
                "https://images.pexels.com/photos/33109/fall-autumn-red-season.jpg?auto=compress&cs=tinysrgb&w=800",
                width: 150,
                height: 150,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
              child: Image.network(
                "https://images.pexels.com/photos/33109/fall-autumn-red-season.jpg?auto=compress&cs=tinysrgb&w=800",
                width: 150,
                height: 150,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
