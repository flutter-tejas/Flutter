import 'package:employees_data/Login.dart';
import 'package:flutter/material.dart';
import 'package:employees_data/Info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return EmployeeData(
      obj: Empolyee(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Login(),
      ),
    );
  }
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    EmployeeData employeeDataObj = EmployeeData.of(context);
    return const MaterialApp(
      home: Login(),
    );
  }
}

class EmployeeData extends InheritedWidget {
  final Empolyee obj;
  const EmployeeData({
    super.key,
    required this.obj,
    required super.child,
  });
  static EmployeeData of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<EmployeeData>()!;
  }

  @override
  bool updateShouldNotify(EmployeeData oldWidget) {
    return obj != oldWidget.obj;
  }
}

class Empolyee {
  int? id;
  String? name;
  String? userName;

  Empolyee({
    this.id,
    this.name,
    this.userName,
  });
}
