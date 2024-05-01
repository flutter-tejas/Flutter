import 'package:flutter/material.dart';

class CountList extends StatefulWidget {
  const CountList({super.key});
  @override
  State<CountList> createState() => _CountListState();
}

class _CountListState extends State<CountList> {
  int _increment = 1;
  List mylist = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("CountList"),
        backgroundColor: Colors.amberAccent,
      ),
      body: ListView.builder(
          itemCount: mylist.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.all(10),
              height: 100,
              width: 100,
              color: Colors.blue,
              child: Text(
                "${mylist[index]}",
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            mylist.add(_increment);
            _increment++;
          });
        },
        child: const Text("Next"),
      ),
    );
  }
}
