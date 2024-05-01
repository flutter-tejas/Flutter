import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ToDoList(),
    );
  }
}

class ToDoList extends StatefulWidget {
  const ToDoList({super.key});

  @override
  State<ToDoList> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  List dolist = [];
  List cardcolorlist = const [
    Color.fromRGBO(250, 232, 232, 1),
    Color.fromRGBO(232, 237, 250, 1),
    Color.fromRGBO(250, 249, 232, 1),
    Color.fromRGBO(250, 232, 250, 1),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
        title: const Text(
          "To-Do List",
          style: TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1),
              fontWeight: FontWeight.w600,
              fontSize: 26),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  width: 400,
                  decoration: BoxDecoration(
                      color: cardcolorlist[index % 4],
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.1),
                          offset: Offset(0, 10),
                          blurRadius: 20,
                        )
                      ],
                      border: Border.all(
                        color: const Color.fromRGBO(250, 232, 232, 1),
                      )),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 52,
                            width: 52,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              borderRadius: BorderRadius.all(
                                Radius.circular(40),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.07),
                                  offset: Offset(0, 0),
                                  blurRadius: 10,
                                ),
                              ],
                            ),
                            child: Image.asset(
                              "assets/900w-YbkKza2BB6c.webp",
                            ),
                          ),
                          const SizedBox(width: 20),
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  "Lorem Ipsum is simply setting industry. ",
                                  style: GoogleFonts.quicksand(
                                    color: const Color.fromRGBO(0, 0, 0, 1),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s ",
                                  style: GoogleFonts.quicksand(
                                    color: const Color.fromRGBO(84, 84, 84, 1),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "10 July 23",
                            style: GoogleFonts.quicksand(
                              color: const Color.fromRGBO(132, 132, 132, 1),
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.edit_outlined,
                            color: Color.fromRGBO(0, 139, 148, 1),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const Icon(
                            Icons.delete_outlined,
                            color: Color.fromRGBO(0, 139, 148, 1),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
              ],
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
