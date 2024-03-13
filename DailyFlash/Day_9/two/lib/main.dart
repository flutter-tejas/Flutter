import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Daily Flash"),
          backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: ListView(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      "assets/download (1).jpeg",
                      height: 80,
                      width: 80,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: const Text(
                        "Core2web",
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      "assets/download (1).jpeg",
                      height: 80,
                      width: 80,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: const Text(
                        "Core2web",
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      "assets/download (1).jpeg",
                      height: 80,
                      width: 80,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: const Text(
                        "Core2web",
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      "assets/download (1).jpeg",
                      height: 80,
                      width: 80,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: const Text(
                        "Core2web",
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      "assets/download (1).jpeg",
                      height: 80,
                      width: 80,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: const Text(
                        "Core2web",
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      "assets/download (1).jpeg",
                      height: 80,
                      width: 80,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: const Text(
                        "Core2web",
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      "assets/download (1).jpeg",
                      height: 80,
                      width: 80,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: const Text(
                        "Core2web",
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      "assets/download (1).jpeg",
                      height: 80,
                      width: 80,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: const Text(
                        "Core2web",
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
