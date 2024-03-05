import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Two(),
    );
  }
}

class Two extends StatefulWidget {
  const Two({super.key});

  @override
  State<Two> createState() => _TwoState();
}

class _TwoState extends State<Two> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 77, 176, 226),
        leading: Builder(
          builder: (context) {
            return const Icon(Icons.menu);
          },
        ),
        title: const Text("AppBar"),
        centerTitle: true,
        actions: const [
          Icon(Icons.notification_add),
          Icon(Icons.delete),
          Icon(Icons.favorite),
        ],
      ),
    );
  }
}
