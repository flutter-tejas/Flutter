import 'package:flutter/material.dart';
import 'package:player_data_inheritedwidget/playerdata.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return PlayerData(
      obj: Player(),
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
    return const MaterialApp(
      home: Login(),
    );
  }
}

class PlayerData extends InheritedWidget {
  final Player obj;
  const PlayerData({
    super.key,
    required this.obj,
    required super.child,
  });
  static PlayerData of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<PlayerData>()!;
  }

  @override
  bool updateShouldNotify(PlayerData oldWidget) {
    return obj != oldWidget.obj;
  }
}

class Player {
  String? plyName;
  String? contyName;
  String? iplTeamName;

  Player({
    this.plyName,
    this.contyName,
    this.iplTeamName,
  });

  static of(BuildContext context) {}
}
