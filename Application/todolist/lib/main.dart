import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

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
  final TextEditingController _titleTextEditingController =
      TextEditingController();
  final TextEditingController _descriptionTextEditingController =
      TextEditingController();
  final TextEditingController _dateTextEditingController =
      TextEditingController();
  List cardcolorlist = const [
    Color.fromRGBO(250, 232, 232, 1),
    Color.fromRGBO(232, 237, 250, 1),
    Color.fromRGBO(250, 249, 232, 1),
    Color.fromRGBO(250, 232, 250, 1),
  ];

  List<ToDoModelClass> todoList = [];

  void submit(bool doEdit, [ToDoModelClass? toDoModelObj]) {
    if (_titleTextEditingController.text.trim().isNotEmpty &&
        _descriptionTextEditingController.text.trim().isNotEmpty &&
        _dateTextEditingController.text.trim().isNotEmpty) {
      if (!doEdit) {
        setState(() {
          todoList.add(
            ToDoModelClass(
              title: _titleTextEditingController.text.trim(),
              description: _descriptionTextEditingController.text.trim(),
              date: _dateTextEditingController.text.trim(),
            ),
          );
        });
      } else {
        setState(() {
          toDoModelObj!.title = _titleTextEditingController.text.trim();
          toDoModelObj.description =
              _descriptionTextEditingController.text.trim();
          toDoModelObj.date = _dateTextEditingController.text.trim();
        });
      }
    }

    clearController();
  }

  void clearController() {
    _titleTextEditingController.clear();
    _descriptionTextEditingController.clear();
    _dateTextEditingController.clear();
  }

  void editCard(ToDoModelClass toDoModelObj) {
    _titleTextEditingController.text = toDoModelObj.title;
    _descriptionTextEditingController.text = toDoModelObj.description;
    _dateTextEditingController.text = toDoModelObj.date;

    showBottomSheet(true, toDoModelObj);
  }

  void deleteCard(ToDoModelClass toDoModelObj) {
    setState(() {
      todoList.remove(toDoModelObj);
    });
  }

  void showBottomSheet(bool doEdit, [ToDoModelClass? toDoModelObj]) {
    showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        isDismissible: true,
        backgroundColor: const Color.fromRGBO(248, 248, 248, 1),
        context: context,
        builder: (BuildContext context) {
          return Padding(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Text(
                "Create Task",
                style: GoogleFonts.quicksand(
                    fontSize: 22, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 12,
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  "Title",
                  style: GoogleFonts.quicksand(
                    color: const Color.fromRGBO(0, 139, 148, 1),
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                TextField(
                  controller: _titleTextEditingController,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(0, 139, 148, 1)),
                      ),
                      border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.purpleAccent),
                        borderRadius: BorderRadius.circular(12),
                      )),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  "Description",
                  style: GoogleFonts.quicksand(
                    color: const Color.fromRGBO(0, 139, 148, 1),
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                TextField(
                  controller: _descriptionTextEditingController,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(0, 139, 148, 1)),
                      ),
                      border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.purpleAccent),
                        borderRadius: BorderRadius.circular(12),
                      )),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  "Date",
                  style: GoogleFonts.quicksand(
                    color: const Color.fromRGBO(0, 139, 148, 1),
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                TextField(
                  controller: _dateTextEditingController,
                  decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.date_range_rounded),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(0, 139, 148, 1)),
                      ),
                      border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.purpleAccent),
                        borderRadius: BorderRadius.circular(12),
                      )),
                  readOnly: true,
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2024),
                      lastDate: DateTime(2025),
                    );
                    String formatedDate =
                        DateFormat.yMMMd().format(pickedDate!);

                    setState(() {
                      _dateTextEditingController.text = formatedDate;
                    });
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
              ]),
              Container(
                height: 50,
                width: 300,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(30)),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
                  ),
                  onPressed: () {
                    if (!doEdit) {
                      submit(doEdit);
                    } else {
                      submit(doEdit, toDoModelObj);
                    }
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    "Submit",
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ]),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
        centerTitle: true,
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
          itemCount: todoList.length,
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
                              "assets/Group 42.png",
                            ),
                          ),
                          const SizedBox(width: 60),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  todoList[index].title,
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
                                  todoList[index].description,
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
                            todoList[index].date,
                            style: GoogleFonts.quicksand(
                              color: const Color.fromRGBO(132, 132, 132, 1),
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            child: const Icon(
                              Icons.edit_outlined,
                              color: Color.fromRGBO(0, 139, 148, 1),
                            ),
                            onTap: () {
                              editCard(todoList[index]);
                            },
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          GestureDetector(
                            child: const Icon(
                              Icons.delete_outlined,
                              color: Color.fromRGBO(0, 139, 148, 1),
                            ),
                            onTap: () {
                              deleteCard(todoList[index]);
                            },
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
        backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
        onPressed: () {
          showBottomSheet(false);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class ToDoModelClass {
  String title;
  String description;
  String date;

  ToDoModelClass({
    required this.title,
    required this.description,
    required this.date,
  });
}
