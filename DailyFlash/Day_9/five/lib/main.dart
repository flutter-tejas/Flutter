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
      home: MyData(),
    );
  }
}

class MyData extends StatefulWidget {
  const MyData({super.key});

  @override
  State<MyData> createState() => _MyDataState();
}

class _MyDataState extends State<MyData> {
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController phoneNumberTextEditingController =
      TextEditingController();

  String _name = '';
  String _phoneNum = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: nameTextEditingController,
                decoration: const InputDecoration(
                    labelText: "Enter Name",
                    hintText: "Enter Name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)))),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: phoneNumberTextEditingController,
                decoration: const InputDecoration(
                    labelText: "Enter Phone Number",
                    hintText: "Enter Phone Number",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)))),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _name = nameTextEditingController.text;
                    _phoneNum = phoneNumberTextEditingController.text;
                  });
                },
                child: const Text("Submit Button"),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Name:",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    _name,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Phone Number:",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    _phoneNum,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
