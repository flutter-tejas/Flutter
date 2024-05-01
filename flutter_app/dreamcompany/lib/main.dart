import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DreamCompany(),
    );
  }
}

class DreamCompany extends StatefulWidget {
  const DreamCompany({super.key});

  @override
  State<DreamCompany> createState() => _DreamCompanyState();
}

class _DreamCompanyState extends State<DreamCompany> {
  List companyList = [];
  final TextEditingController _nameTextEditingController =
      TextEditingController();
  final TextEditingController _companynameTextEditingController =
      TextEditingController();
  final TextEditingController _locationTextEditingController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "DreamCompany",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(children: [
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Name:",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        TextField(
          keyboardType: TextInputType.emailAddress,
          controller: _nameTextEditingController,
          decoration: InputDecoration(
              hintText: "Enter Name",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              )),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Company:",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        TextField(
          controller: _companynameTextEditingController,
          decoration: InputDecoration(
              hintText: "Enter Company Name",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              )),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Location:",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        TextField(
          controller: _locationTextEditingController,
          decoration: InputDecoration(
              hintText: "Enter Location",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              )),
        ),
        const SizedBox(
          height: 40,
        ),
        ElevatedButton(
          onPressed: () {
            companyList.add({
              'Name': _nameTextEditingController.text,
              'Company': _companynameTextEditingController.text,
              'Location': _locationTextEditingController.text,
            });
            setState(() {});
          },
          child: const Text("Submit Button"),
        ),
        const SizedBox(
          height: 40,
        ),
        Column(
          children: [
            SizedBox(
              height: 380,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: companyList.length,
                  itemBuilder: (context, index) {
                    return Container(
                        margin: const EdgeInsets.all(20),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(30)),
                            border: Border.all(color: Colors.black12),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.blue,
                                  offset: Offset(20, 20),
                                  blurRadius: 10),
                              BoxShadow(
                                  color: Colors.red,
                                  offset: Offset(15, 8),
                                  blurRadius: 10),
                            ]),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Name:",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  companyList[index]['Name'],
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(
                                  height: 40,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Dream Company:",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  companyList[index]['Company'],
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(
                                  height: 40,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Location:",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  companyList[index]['Location'],
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ],
                        ));
                  }),
            ),
          ],
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            companyList.clear();
          });
        },
        child: const Icon(Icons.clear),
      ),
    );
  }
}
