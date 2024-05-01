import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<Employee>(
          create: (context) => Employee(empName: "Kanha", empId: 10),
        ),
        ChangeNotifierProvider<Project>(
          create: (context) =>
              Project(projectName: "HealthCare", devType: "Backend Dev"),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainApp(),
      ),
    );
  }
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            Provider.of<Employee>(context).empName,
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            Provider.of<Employee>(context).empId.toString(),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            Provider.of<Project>(context).projectName,
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            Provider.of<Project>(context).devType,
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              Provider.of<Project>(context, listen: false)
                  .changeProject("EdTech", "Mobile Dev");
            },
            child: const Text("Change Project"),
          )
        ],
      ),
    );
  }
}

class Employee {
  String empName;
  int empId;
  Employee({required this.empName, required this.empId});
}

class Project with ChangeNotifier {
  String projectName;
  String devType;
  Project({required this.projectName, required this.devType});

  void changeProject(String projectName, String devType) {
    this.projectName = projectName;
    this.devType = devType;
    notifyListeners();
  }
}
