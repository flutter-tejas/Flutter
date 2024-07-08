import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'login.dart';
import 'package:apna_mess_app/mess.dart';

dynamic database;
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

Future<List<MessModelClass>> getmessData() async {
  database = openDatabase(
    join(await getDatabasesPath(), "MessDataDB.db"),
    version: 1,
    onCreate: (db, version) async {
      await db.execute('''CREATE TABLE MESS(
        messName TEXT PRIMARY KEY,
        address TEXT,
        menu1 TEXT,
        menu2 TEXT,
        menu3 TEXT,
        menu4 TEXT) ''');
    },
  );

  final localDB = await database;
  List<Map<String, dynamic>> maps = await localDB.query("MESS");
  return List.generate(maps.length, (i) {
    return MessModelClass(
      messName: maps[i]['messName'],
      address: maps[i]['address'],
      menu1: maps[i]['menu1'],
      menu2: maps[i]['menu2'],
      menu3: maps[i]['menu3'],
      menu4: maps[i]['menu4'],
    );
  });
}

Future insertmess(MessModelClass obj) async {
  final localDB = await database;
  await localDB.insert(
    "MESS",
    obj.messCard(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

Future<void> updatemess(MessModelClass obj) async {
  final localDB = await database;
  await localDB.update(
    "MESS",
    obj.messCard(),
    where: 'messName=?',
    whereArgs: [obj.messName],
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
