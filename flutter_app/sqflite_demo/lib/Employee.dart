import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

dynamic database;

class Employee {
  final int empId;
  final String name;
  final String sal;

  Employee({
    required this.empId,
    required this.name,
    required this.sal,
  });

  Map<String, dynamic> employeeMap() {
    return {
      'empId': empId,
      'name': name,
      'sal': sal,
    };
  }
}

void main() async {
  runApp(const MainApp());
  database = openDatabase(
    join(await getDatabasesPath(), "employessDB.db"),
    version: 1,
    onCreate: (db, version) {
      db.execute('''
CREATE TABLE Employee(
  empId INT PRIMARY KEY,
  name TEXT,
  sal REAL
)''');
    },
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: Scaffold(
      body: Center(
        child: Text("Hello World"),
      ),
    ));
  }
}
