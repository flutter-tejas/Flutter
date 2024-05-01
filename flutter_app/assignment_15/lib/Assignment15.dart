import 'package:flutter/material.dart';

class Assignment15 extends StatefulWidget {
  const Assignment15({super.key});

  @override
  State<Assignment15> createState() => _Assignment15State();
}

class _Assignment15State extends State<Assignment15> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Portfolio"),
        backgroundColor: Colors.amberAccent,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Name:Tejas Jawale"),
              const SizedBox(height: 20),
              Image.asset(
                'asset/images/TejasPassport.JPG',
                width: 300,
                height: 300,
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Collage Name:NBNSTIC"),
              const SizedBox(height: 20),
              Image.asset(
                'asset/images/TejasPassport.JPG',
                width: 100,
                height: 100,
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Dream Company:Microsoft"),
              const SizedBox(height: 20),
              Image.asset(
                'asset/images/TejasPassport.JPG',
                width: 100,
                height: 100,
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Text("Next"),
      ),
    );
  }
}
