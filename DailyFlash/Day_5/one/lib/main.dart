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
          title: const Text("Profile Information"),
        ),
        body: Center(
          child: Column(
            children: [
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWeDn1kVQPsmF2ea3nLT8-DM_D8ZGObjxfQNFmQDF66X7D-EY3Dcc8XZk8Yg&s",
                height: 250,
                width: 250,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Name:-Tejas Jawale",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Phone Number:- 8412070031",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
