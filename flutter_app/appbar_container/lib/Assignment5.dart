import "package:flutter/material.dart";

class Assignment5 extends StatelessWidget {
  const Assignment5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Column(
                children: [
                  Container(
                    child: Image.network(
                      "https://images.pexels.com/photos/33109/fall-autumn-red-season.jpg?auto=compress&cs=tinysrgb&w=800",
                      width: 150,
                      height: 150,
                    ),
                  ),
                  Container(
                    child: Image.network(
                      "https://images.pexels.com/photos/33109/fall-autumn-red-season.jpg?auto=compress&cs=tinysrgb&w=800",
                      width: 150,
                      height: 150,
                    ),
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
            ]),
          ],
        ),
      ),
    );
  }
}
