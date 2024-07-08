import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              updateEmployeeData();
            },
            child: const Text("Delete Employee"),
          ),
        ),
      ),
    );
  }

// Post request
  void postEmployeeData() async {
    Uri url = Uri.parse("https://dummy.restapiexample.com/api/v1/create");
    Map<String, String> mapData = {
      "name": "Kanha",
      "salary": "200000",
      "age": "23",
    };
    http.Response response = await http.post(
      url,
      body: mapData,
    );
    log(response.body);
  }

// Put request
  void updateEmployeeData() async {
    Uri url = Uri.parse("https://dummy.restapiexample.com/api/v1/update/21");
    Map<String, String> mapData = {
      "name": "Kanha",
      "salary": "250000",
      "age": "23",
    };
    http.Response response = await http.put(
      url,
      body: mapData,
    );
    log(response.body);
  }

// Delete request
  void deleteEmployeeData() async {
    Uri url = Uri.parse("https://dummy.restapiexample.com/api/v1/delete/5");

    http.Response response = await http.delete(url);
    log(response.body);
  }
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}