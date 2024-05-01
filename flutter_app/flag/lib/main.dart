import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Happy Republic Day"),
            backgroundColor: Colors.amber,
          ),
          backgroundColor: Colors.blueAccent,
          body: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 850,
                  width: 20,
                  color: Colors.brown,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 70,
                      width: 350,
                      color: Colors.orange,
                    ),
                    Container(
                      height: 70,
                      width: 350,
                      color: Colors.white,
                      child: Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPOYQdYyznfgrs1RR2vyS8kUlXAVgmpVfWV9ysJAEPTw&s",
                      ),
                    ),
                    Container(
                      height: 70,
                      width: 350,
                      color: Colors.green,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
