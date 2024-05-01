import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Flutter App",
      home: MyHomePage(title: 'Add Names'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _nameTextEditingController =
      TextEditingController();

  final FocusNode _nameFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20.0,
          ),
          TextField(
            controller: _nameTextEditingController,
            focusNode: _nameFocusNode,
            decoration: InputDecoration(
              hintText: "Enter name",
              border: InputBorder.none,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: const BorderSide(
                  color: Colors.blue,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                  color: Colors.pink,
                ),
              ),
            ),
            cursorColor: Colors.amber,
            textInputAction: TextInputAction.done,
            keyboardType: TextInputType.phone,
            onChanged: (value) {
              print("value=$value");
            },
            onSubmitted: (value) {
              print("Data Submitted=$value");
            },
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Text("Add"),
      ),
    );
  }
}
