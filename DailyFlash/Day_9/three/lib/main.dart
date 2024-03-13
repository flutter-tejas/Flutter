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
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage("assets/download (1).jpeg")),
                        border: Border.all(color: Colors.black),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: const Text("Core2Web"),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          padding: const EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: const Text("Core2Web"),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          padding: const EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: const Text("Core2Web"),
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      child: const Icon(Icons.check),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage("assets/download (1).jpeg")),
                        border: Border.all(color: Colors.black),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: const Text("Core2Web"),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          padding: const EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: const Text("Core2Web"),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          padding: const EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: const Text("Core2Web"),
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      child: const Icon(Icons.check),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage("assets/download (1).jpeg")),
                        border: Border.all(color: Colors.black),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: const Text("Core2Web"),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          padding: const EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: const Text("Core2Web"),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          padding: const EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: const Text("Core2Web"),
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      child: const Icon(Icons.check),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage("assets/download (1).jpeg")),
                        border: Border.all(color: Colors.black),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: const Text("Core2Web"),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          padding: const EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: const Text("Core2Web"),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          padding: const EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: const Text("Core2Web"),
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      child: const Icon(Icons.check),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage("assets/download (1).jpeg")),
                        border: Border.all(color: Colors.black),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: const Text("Core2Web"),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          padding: const EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: const Text("Core2Web"),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          padding: const EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: const Text("Core2Web"),
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      child: const Icon(Icons.check),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage("assets/download (1).jpeg")),
                        border: Border.all(color: Colors.black),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: const Text("Core2Web"),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          padding: const EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: const Text("Core2Web"),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          padding: const EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: const Text("Core2Web"),
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      child: const Icon(Icons.check),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage("assets/download (1).jpeg")),
                        border: Border.all(color: Colors.black),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: const Text("Core2Web"),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          padding: const EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: const Text("Core2Web"),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          padding: const EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: const Text("Core2Web"),
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      child: const Icon(Icons.check),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage("assets/download (1).jpeg")),
                        border: Border.all(color: Colors.black),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: const Text("Core2Web"),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          padding: const EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: const Text("Core2Web"),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          padding: const EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: const Text("Core2Web"),
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      child: const Icon(Icons.check),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage("assets/download (1).jpeg")),
                        border: Border.all(color: Colors.black),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: const Text("Core2Web"),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          padding: const EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: const Text("Core2Web"),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          padding: const EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: const Text("Core2Web"),
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      child: const Icon(Icons.check),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage("assets/download (1).jpeg")),
                        border: Border.all(color: Colors.black),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: const Text("Core2Web"),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          padding: const EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: const Text("Core2Web"),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          padding: const EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: const Text("Core2Web"),
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      child: const Icon(Icons.check),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
