import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: true,
      home: SetState(),
    );
  }
}

class SetState extends StatefulWidget {
  const SetState({super.key});

  @override
  State<SetState> createState() => _SetStateState();
}

class _SetStateState extends State<SetState> {
  int _counter = 0;
  int _counter1 = 0;
  void _incrementCounter1() {
    setState(() {
      _counter++;
    });
  }

  void _incrementCounter2() {
    setState(() {
      _counter1++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    _incrementCounter1();
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.red,
                            offset: Offset(10, 10),
                            blurRadius: 20,
                          ),
                        ],
                        gradient: const LinearGradient(
                            colors: [Colors.pink, Colors.purple])),
                    child: const Text(
                      "Java",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 100,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                  child: Text(
                    '$_counter',
                    style: const TextStyle(fontSize: 30),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    _incrementCounter2();
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.red,
                            offset: Offset(10, 10),
                            blurRadius: 20,
                          )
                        ],
                        gradient: const LinearGradient(
                            colors: [Colors.pink, Colors.purple])),
                    child: const Text(
                      "flutter",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 100,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                  child: Text(
                    '$_counter1',
                    style: const TextStyle(fontSize: 30),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
