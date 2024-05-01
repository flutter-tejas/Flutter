import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return Company(companyName: "Google", empCount: 250);
      },
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainApp(),
      ),
    );
  }
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State createState() => _MainAppState();
}

class _MainAppState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(Provider.of<Company>(context).companyName),
          const SizedBox(
            height: 30,
          ),
          Text("${Provider.of<Company>(context).empCount}"),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () {
                Provider.of<Company>(context, listen: false)
                    .changeCompany("FaceBook", 500);
              },
              child: const Text("Change Company "))
        ],
      ),
    );
  }
}

class Company extends ChangeNotifier {
  String companyName;
  int empCount;
  Company({required this.companyName, required this.empCount});

  void changeCompany(String companyName, int empCount) {
    this.companyName = companyName;
    this.empCount = empCount;
    notifyListeners();
  }
}
