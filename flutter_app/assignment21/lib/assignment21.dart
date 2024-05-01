import 'package:flutter/material.dart';

class Assignment21 extends StatefulWidget {
  const Assignment21({super.key});

  @override
  State<Assignment21> createState() => _Assignment21State();
}

class _Assignment21State extends State<Assignment21> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "WhatsApp",
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 14, 148, 19),
        actions: const [
          Icon(
            Icons.camera_enhance_outlined,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.search,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
        ],
      ),
      body: Column(children: [
        Column(
          children: [
            Container(
              color: const Color.fromARGB(255, 14, 148, 19),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: const Icon(
                      Icons.group,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 70,
                  ),
                  Container(
                    child: const Text(
                      "Chats",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    width: 70,
                  ),
                  Container(
                    child: const Text(
                      "Updates",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    width: 70,
                  ),
                  Container(
                    child: const Text(
                      "Calls",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 780,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.archive,
                                size: 30,
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                "Archived",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              ClipOval(
                                child: SizedBox.fromSize(
                                  size: const Size.fromRadius(25),
                                  child: Image.network(
                                    "https://img.freepik.com/free-vector/indian-flag-theme-independence-day-decorative-background-vector_1055-10866.jpg?size=626&ext=jpg&ga=GA1.1.1637394871.1705463981&semt=sph",
                                    height: 50,
                                    width: 50,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("BE E&TC2023"),
                                  Text("Dear Sir,We have an "),
                                ],
                              ),
                              const SizedBox(
                                width: 140,
                              ),
                              const Row(
                                children: [
                                  Text("Yesterday"),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.network(
                                "https://img.freepik.com/free-vector/indian-flag-theme-independence-day-decorative-background-vector_1055-10866.jpg?size=626&ext=jpg&ga=GA1.1.1637394871.1705463981&semt=sph",
                                height: 50,
                                width: 50,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Baba"),
                                  Text("Happy Birthday"),
                                ],
                              ),
                              const SizedBox(
                                width: 175,
                              ),
                              const Row(
                                children: [
                                  Text("Yesterday"),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.network(
                                "https://img.freepik.com/free-vector/indian-flag-theme-independence-day-decorative-background-vector_1055-10866.jpg?size=626&ext=jpg&ga=GA1.1.1637394871.1705463981&semt=sph",
                                height: 50,
                                width: 50,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Matoshri"),
                                  Text("Happy Birthday "),
                                ],
                              ),
                              const SizedBox(
                                width: 175,
                              ),
                              const Row(
                                children: [
                                  Text("Yesterday"),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.network(
                                "https://img.freepik.com/free-vector/indian-flag-theme-independence-day-decorative-background-vector_1055-10866.jpg?size=626&ext=jpg&ga=GA1.1.1637394871.1705463981&semt=sph",
                                height: 50,
                                width: 50,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Tejas Patil"),
                                  Text("Happy Birthday"),
                                ],
                              ),
                              const SizedBox(
                                width: 175,
                              ),
                              const Row(
                                children: [
                                  Text("Yesterday"),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.network(
                                "https://img.freepik.com/free-vector/indian-flag-theme-independence-day-decorative-background-vector_1055-10866.jpg?size=626&ext=jpg&ga=GA1.1.1637394871.1705463981&semt=sph",
                                height: 50,
                                width: 50,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Kanu"),
                                  Text("Happy Birthday"),
                                ],
                              ),
                              const SizedBox(
                                width: 175,
                              ),
                              const Row(
                                children: [
                                  Text("Yesterday"),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.network(
                                "https://img.freepik.com/free-vector/indian-flag-theme-independence-day-decorative-background-vector_1055-10866.jpg?size=626&ext=jpg&ga=GA1.1.1637394871.1705463981&semt=sph",
                                height: 50,
                                width: 50,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("BE E&TC2023"),
                                  Text("Dear Sir,We have an "),
                                ],
                              ),
                              const SizedBox(
                                width: 140,
                              ),
                              const Row(
                                children: [
                                  Text("Yesterday"),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.network(
                                "https://img.freepik.com/free-vector/indian-flag-theme-independence-day-decorative-background-vector_1055-10866.jpg?size=626&ext=jpg&ga=GA1.1.1637394871.1705463981&semt=sph",
                                height: 50,
                                width: 50,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("BE E&TC2023"),
                                  Text("Dear Sir,We have an "),
                                ],
                              ),
                              const SizedBox(
                                width: 140,
                              ),
                              const Row(
                                children: [
                                  Text("Yesterday"),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.network(
                                "https://img.freepik.com/free-vector/indian-flag-theme-independence-day-decorative-background-vector_1055-10866.jpg?size=626&ext=jpg&ga=GA1.1.1637394871.1705463981&semt=sph",
                                height: 50,
                                width: 50,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("BE E&TC2023"),
                                  Text("Dear Sir,We have an "),
                                ],
                              ),
                              const SizedBox(
                                width: 140,
                              ),
                              const Row(
                                children: [
                                  Text("Yesterday"),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.network(
                                "https://img.freepik.com/free-vector/indian-flag-theme-independence-day-decorative-background-vector_1055-10866.jpg?size=626&ext=jpg&ga=GA1.1.1637394871.1705463981&semt=sph",
                                height: 50,
                                width: 50,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("BE E&TC2023"),
                                  Text("Dear Sir,We have an "),
                                ],
                              ),
                              const SizedBox(
                                width: 140,
                              ),
                              const Row(
                                children: [
                                  Text("Yesterday"),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.network(
                                "https://img.freepik.com/free-vector/indian-flag-theme-independence-day-decorative-background-vector_1055-10866.jpg?size=626&ext=jpg&ga=GA1.1.1637394871.1705463981&semt=sph",
                                height: 50,
                                width: 50,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("BE E&TC2023"),
                                  Text("Dear Sir,We have an "),
                                ],
                              ),
                              const SizedBox(
                                width: 140,
                              ),
                              const Row(
                                children: [
                                  Text("Yesterday"),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.network(
                                "https://img.freepik.com/free-vector/indian-flag-theme-independence-day-decorative-background-vector_1055-10866.jpg?size=626&ext=jpg&ga=GA1.1.1637394871.1705463981&semt=sph",
                                height: 50,
                                width: 50,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("BE E&TC2023"),
                                  Text("Dear Sir,We have an "),
                                ],
                              ),
                              const SizedBox(
                                width: 140,
                              ),
                              const Row(
                                children: [
                                  Text("Yesterday"),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.network(
                                "https://img.freepik.com/free-vector/indian-flag-theme-independence-day-decorative-background-vector_1055-10866.jpg?size=626&ext=jpg&ga=GA1.1.1637394871.1705463981&semt=sph",
                                height: 50,
                                width: 50,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("BE E&TC2023"),
                                  Text("Dear Sir,We have an "),
                                ],
                              ),
                              const SizedBox(
                                width: 140,
                              ),
                              const Row(
                                children: [
                                  Text("Yesterday"),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.network(
                                "https://img.freepik.com/free-vector/indian-flag-theme-independence-day-decorative-background-vector_1055-10866.jpg?size=626&ext=jpg&ga=GA1.1.1637394871.1705463981&semt=sph",
                                height: 50,
                                width: 50,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("BE E&TC2023"),
                                  Text("Dear Sir,We have an "),
                                ],
                              ),
                              const SizedBox(
                                width: 140,
                              ),
                              const Row(
                                children: [
                                  Text("Yesterday"),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.network(
                                "https://img.freepik.com/free-vector/indian-flag-theme-independence-day-decorative-background-vector_1055-10866.jpg?size=626&ext=jpg&ga=GA1.1.1637394871.1705463981&semt=sph",
                                height: 50,
                                width: 50,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("BE E&TC2023"),
                                  Text("Dear Sir,We have an "),
                                ],
                              ),
                              const SizedBox(
                                width: 140,
                              ),
                              const Row(
                                children: [
                                  Text("Yesterday"),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.network(
                                "https://img.freepik.com/free-vector/indian-flag-theme-independence-day-decorative-background-vector_1055-10866.jpg?size=626&ext=jpg&ga=GA1.1.1637394871.1705463981&semt=sph",
                                height: 50,
                                width: 50,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("BE E&TC2023"),
                                  Text("Dear Sir,We have an "),
                                ],
                              ),
                              const SizedBox(
                                width: 140,
                              ),
                              const Row(
                                children: [
                                  Text("Yesterday"),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.network(
                                "https://img.freepik.com/free-vector/indian-flag-theme-independence-day-decorative-background-vector_1055-10866.jpg?size=626&ext=jpg&ga=GA1.1.1637394871.1705463981&semt=sph",
                                height: 50,
                                width: 50,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("BE E&TC2023"),
                                  Text("Dear Sir,We have an "),
                                ],
                              ),
                              const SizedBox(
                                width: 140,
                              ),
                              const Row(
                                children: [
                                  Text("Yesterday"),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.network(
                                "https://img.freepik.com/free-vector/indian-flag-theme-independence-day-decorative-background-vector_1055-10866.jpg?size=626&ext=jpg&ga=GA1.1.1637394871.1705463981&semt=sph",
                                height: 50,
                                width: 50,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("BE E&TC2023"),
                                  Text("Dear Sir,We have an "),
                                ],
                              ),
                              const SizedBox(
                                width: 140,
                              ),
                              const Row(
                                children: [
                                  Text("Yesterday"),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.network(
                                "https://img.freepik.com/free-vector/indian-flag-theme-independence-day-decorative-background-vector_1055-10866.jpg?size=626&ext=jpg&ga=GA1.1.1637394871.1705463981&semt=sph",
                                height: 50,
                                width: 50,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("BE E&TC2023"),
                                  Text("Dear Sir,We have an "),
                                ],
                              ),
                              const SizedBox(
                                width: 140,
                              ),
                              const Row(
                                children: [
                                  Text("Yesterday"),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
          onPressed: () {}, child: const Icon(Icons.message)),
    );
  }
}
