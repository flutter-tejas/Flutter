import 'package:flutter/material.dart';

class ToggleBox extends StatefulWidget {
  const ToggleBox({super.key});

  @override
  State<ToggleBox> createState() => _ToggleBoxState();
}

class _ToggleBoxState extends State<ToggleBox> {
  int counter1 = 0;
  int counter2 = 0;
  Color setBox1Color() {
    if (counter1 == 0) {
      return Colors.red;
    } else if (counter1 == 1) {
      return Colors.blue;
    } else if (counter1 == 2) {
      return Colors.green;
    } else if (counter1 == 3) {
      return Colors.yellow;
    } else {
      counter1 = 0;
      return Colors.red;
    }
  }

  Color setBox2Color() {
    if (counter2 == 0) {
      return Colors.black;
    } else if (counter2 == 1) {
      return Colors.blue;
    } else if (counter2 == 2) {
      return Colors.green;
    } else if (counter2 == 3) {
      return Colors.yellow;
    } else {
      counter2 = 0;
      return Colors.black;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Toggle Box"),
        backgroundColor: Colors.amberAccent,
      ),
      body: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(height: 100, width: 100, color: setBox1Color()),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (counter1 > 3) {
                      counter1 == 0;
                    }
                    counter1++;
                  });
                },
                child: const Text("Button 1"))
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(height: 100, width: 100, color: setBox2Color()),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (counter2 > 3) {
                      counter2 == 0;
                    }
                    counter2++;
                  });
                },
                child: const Text("Button 2"))
          ],
        ),
      ]),
    );
  }
}
