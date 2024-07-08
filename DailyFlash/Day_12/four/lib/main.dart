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
      home: Four(),
    );
  }
}

class Four extends StatefulWidget {
  const Four({super.key});

  @override
  State<Four> createState() => _ThreeState();
}

class _ThreeState extends State<Four> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _collageController = TextEditingController();
  final GlobalKey<FormState> _submit = GlobalKey<FormState>();

  List<Map<String, String>> card = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Form(
          key: _submit,
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    hintText: "Enter your name"),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please Enter your name";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 40,
              ),
              TextFormField(
                controller: _collageController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    hintText: "Enter your Collage"),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please Enter your Collage";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  if (_submit.currentState!.validate()) {
                    setState(() {
                      Map<String, String> newData = {
                        'name': _nameController.text.trim(),
                        'collage': _collageController.text.trim(),
                      };
                      card.add(newData);
                      _nameController.clear();
                      _collageController.clear();
                    });
                  }
                },
                child: const Text("Submit"),
              ),
              const SizedBox(
                height: 40,
              ),
              ListView.builder(
                itemCount: card.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Name:${card[index]['name']}",
                        ),
                        Text(
                          "Collage Name:${card[index]['Collage']}",
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
