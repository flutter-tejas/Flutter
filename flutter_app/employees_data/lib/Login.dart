import 'package:employees_data/Info.dart';
import 'package:employees_data/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _Id_Controller = TextEditingController();

  TextEditingController _Name_Controller = TextEditingController();

  TextEditingController _Username_Controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    EmployeeData employeeDataObj = EmployeeData.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Screen "),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              TextField(
                controller: _Id_Controller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    hintText: "Enter Id"),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: _Name_Controller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    hintText: "Enter Name"),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: _Username_Controller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    hintText: "Enter Username"),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  employeeDataObj.obj.name = _Name_Controller.text.trim();
                  employeeDataObj.obj.id =
                      int.parse(_Id_Controller.text.trim());
                  employeeDataObj.obj.userName =
                      _Username_Controller.text.trim();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => const Info(),
                    ),
                  );
                },
                child: const Text("Submit "),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
