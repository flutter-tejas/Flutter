import 'package:apna_mess_app/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:apna_mess_app/MenuList.dart';

class ApnaMess extends StatefulWidget {
  const ApnaMess(
      {super.key, required String uName, required List taskDataList});

  @override
  State<ApnaMess> createState() => _ApnaMessState();
}

class _ApnaMessState extends State<ApnaMess> {
  @override
  void initState() {
    super.initState();
    messCard = [];
    Future.delayed(Duration.zero, () async {
      messCard = await getmessData();
      setState(() {});
    });
  }

  List<MessModelClass> messCard = [];
  final TextEditingController _messNameTextEditingController =
      TextEditingController();
  final TextEditingController _addressTextEditingController =
      TextEditingController();
  final TextEditingController _menu1TextEditingController =
      TextEditingController();
  final TextEditingController _menu2TextEditingController =
      TextEditingController();
  final TextEditingController _menu3TextEditingController =
      TextEditingController();
  final TextEditingController _menu4TextEditingController =
      TextEditingController();

  var listOfColors = [
    const Color.fromARGB(248, 218, 242, 219),
    const Color.fromARGB(232, 216, 224, 234),
    const Color.fromARGB(248, 236, 221, 230),
    const Color.fromARGB(248, 245, 221, 221),
  ];

  void showBottomSheet(bool doEdit, [MessModelClass? messModelObj]) {
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
                "Create Mess Page",
                style: GoogleFonts.quicksand(
                    fontSize: 22, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 12,
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  "Mess Name",
                  style: GoogleFonts.quicksand(
                    color: const Color.fromARGB(255, 224, 20, 20),
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                TextField(
                  controller: _messNameTextEditingController,
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
                  "Address",
                  style: GoogleFonts.quicksand(
                    color: const Color.fromARGB(255, 224, 20, 20),
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                TextField(
                  controller: _addressTextEditingController,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(0, 139, 148, 1),
                        ),
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
                  "Menu-1",
                  style: GoogleFonts.quicksand(
                    color: const Color.fromARGB(255, 224, 20, 20),
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                TextField(
                  controller: _menu1TextEditingController,
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
                  "Menu-2",
                  style: GoogleFonts.quicksand(
                    color: const Color.fromARGB(255, 224, 20, 20),
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                TextField(
                  controller: _menu2TextEditingController,
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
                  "Menu-3",
                  style: GoogleFonts.quicksand(
                    color: const Color.fromARGB(255, 224, 20, 20),
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                TextField(
                  controller: _menu3TextEditingController,
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
                  height: 20,
                ),
                Text(
                  "Menu-4",
                  style: GoogleFonts.quicksand(
                    color: const Color.fromARGB(255, 224, 20, 20),
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                TextField(
                  controller: _menu4TextEditingController,
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
                    backgroundColor: const Color.fromARGB(255, 224, 20, 20),
                  ),
                  onPressed: () {
                    if (!doEdit) {
                      submit(doEdit);
                    } else {
                      submit(doEdit, messModelObj);
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

  void submit(bool doEdit, [MessModelClass? messModelObj]) async {
    if (_messNameTextEditingController.text.trim().isNotEmpty &&
        _addressTextEditingController.text.trim().isNotEmpty &&
        _menu1TextEditingController.text.trim().isNotEmpty &&
        _menu2TextEditingController.text.trim().isNotEmpty &&
        _menu3TextEditingController.text.trim().isNotEmpty &&
        _menu4TextEditingController.text.trim().isNotEmpty) {
      if (!doEdit) {
        await insertmess(
          MessModelClass(
            messName: _messNameTextEditingController.text.trim(),
            address: _addressTextEditingController.text.trim(),
            menu1: _menu1TextEditingController.text.trim(),
            menu2: _menu2TextEditingController.text.trim(),
            menu3: _menu3TextEditingController.text.trim(),
            menu4: _menu4TextEditingController.text.trim(),
          ),
        );
      } else {
        updatemess(messModelObj!);
      }
      //messCard =  getmessData();
      print(await getmessData());

      setState(() {});

      clearController();
    }
  }

  void clearController() {
    _messNameTextEditingController.clear();
    _addressTextEditingController.clear();
    _menu1TextEditingController.clear();
    _menu2TextEditingController.clear();
    _menu3TextEditingController.clear();
    _menu4TextEditingController.clear();
  }

  void editCard(MessModelClass messModelClass) {
    _messNameTextEditingController.text = messModelClass.messName;
    _addressTextEditingController.text = messModelClass.address;
    _menu1TextEditingController.text = messModelClass.menu1;
    _menu2TextEditingController.text = messModelClass.menu2;
    _menu3TextEditingController.text = messModelClass.menu3;
    _menu4TextEditingController.text = messModelClass.menu4;

    showBottomSheet(true, messModelClass);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(205, 218, 218, 1),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.red, Colors.pink, Colors.purple],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 70,
            left: 10,
            right: 10,
          ),
          child: Column(
            children: [
              const Row(
                children: [
                  Icon(Icons.menu),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello User !!!!",
                    style: GoogleFonts.jost(
                      color: const Color.fromRGBO(0, 0, 0, 1),
                      fontWeight: FontWeight.w300,
                      fontSize: 26.99,
                    ),
                  ),
                  Text(
                    "Welcome To Apna Mess",
                    style: GoogleFonts.jost(
                      color: const Color.fromRGBO(0, 0, 0, 1),
                      fontWeight: FontWeight.w700,
                      fontSize: 37,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(
                        40,
                      ),
                    ),
                  ),
                  child: ListView.builder(
                    itemCount: messCard.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  MenuList(messCard: messCard[index]),
                            ),
                          );
                        },
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              height: 200,
                              width: 350,
                              decoration: BoxDecoration(
                                color:
                                    listOfColors[index % listOfColors.length],
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromARGB(255, 217, 118, 143),
                                    offset: Offset.zero,
                                    spreadRadius: 4.0,
                                    blurRadius: 10,
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          editCard(messCard[index]);
                                        },
                                        child: const Icon(
                                          Icons.edit,
                                          color:
                                              Color.fromARGB(255, 238, 4, 82),
                                          size: 30,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "Name:${messCard[index].messName}",
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    "Address: ${messCard[index].address}",
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 100,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 238, 4, 82),
        onPressed: () {
          showBottomSheet(false);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class MessModelClass {
  String messName;
  String address;
  // List menuList = [];
  String menu1;
  String menu2;
  String menu3;
  String menu4;

  MessModelClass({
    required this.messName,
    required this.address,
    required this.menu1,
    required this.menu2,
    required this.menu3,
    required this.menu4,
  });

  Map<String, dynamic> messCard() {
    return {
      'messName': messName,
      'address': address,
      'menu1': menu1,
      'menu2': menu2,
      'menu3': menu3,
      'menu4': menu4,
    };
  }
}
