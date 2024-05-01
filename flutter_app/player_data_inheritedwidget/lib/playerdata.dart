import 'package:player_data_inheritedwidget/playerinfo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'main.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _plyName_Controller = TextEditingController();

  TextEditingController _contyName_Controller = TextEditingController();

  TextEditingController _iplTeamName_Controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    PlayerData playerDataObj = PlayerData.of(context);
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
                controller: _plyName_Controller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    hintText: "Enter Player Name "),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: _contyName_Controller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    hintText: "Enter Player Country"),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: _iplTeamName_Controller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    hintText: "Enter Player IPL Team "),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  playerDataObj.obj.plyName = _plyName_Controller.text.trim();
                  playerDataObj.obj.contyName =
                      _contyName_Controller.text.trim();
                  playerDataObj.obj.iplTeamName =
                      _iplTeamName_Controller.text.trim();
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
