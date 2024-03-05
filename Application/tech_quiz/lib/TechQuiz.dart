import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TechQuiz extends StatefulWidget {
  const TechQuiz({super.key});

  @override
  State<TechQuiz> createState() => _TechQuizState();
}

class SingleQuestionModel {
  final String? question;
  final List<String>? options;
  final int? answerIndex;

  const SingleQuestionModel({this.question, this.options, this.answerIndex});
}

class _TechQuizState extends State<TechQuiz> {
  TextEditingController userNameTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Widget LoginScreen() {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Quiz App",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w800, color: Colors.red),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: userNameTextEditingController,
                  decoration: InputDecoration(
                    hintText: "Enter username",
                    label: const Text("Enter Username"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    prefixIcon: const Icon(
                      Icons.person,
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter username";
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: passwordTextEditingController,
                  obscureText: true,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    label: const Text("Enter Password"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    prefixIcon: const Icon(
                      Icons.lock,
                    ),
                    suffixIcon: const Icon(
                      Icons.remove_red_eye_outlined,
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter Password";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Colors.green,
                    ),
                  ),
                  onPressed: () {
                    setState(() {});
                    bool loginValidated = _formKey.currentState!.validate();
                    if (loginValidated) {
                      if (userNameTextEditingController.text == "TejasJawale" &&
                          passwordTextEditingController.text == "Tejas123") {
                        setState(() {
                          isLoggedIn = true;
                        });
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Login Successful"),
                          ),
                        );
                      } else if (userNameTextEditingController.text ==
                              "core2web" &&
                          passwordTextEditingController.text == "c2w") {
                        setState(() {
                          isLoggedIn = true;
                        });
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Login Successful"),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Login Failed"),
                          ),
                        );
                      }

                      {
                        return;
                      }
                    }
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }

  List allQuestions = [
    const SingleQuestionModel(
      question: "What is the largest ocean in the world?",
      options: [
        "Atlantic Ocean",
        "Indian Ocean",
        "Arctic Ocean",
        "Pacific Ocean"
      ],
      answerIndex: 3,
    ),
    const SingleQuestionModel(
      question: "Who wrote the play Romeo and Juliet?",
      options: [
        "William Shakespeare",
        "Jane Austen",
        "Charles Dickens",
        "F.Scott Fitzgerald"
      ],
      answerIndex: 0,
    ),
    const SingleQuestionModel(
      question: "Which country is known as the Land of the Rising Sun?",
      options: ["China", "South Korea", "Japan", "Thailand"],
      answerIndex: 2,
    ),
    const SingleQuestionModel(
      question: "What is the tallest mountain in the world?",
      options: [
        "Mount Kilimanjaro",
        "Mount Everest",
        "Mount McKinley",
        "Mount Fuji"
      ],
      answerIndex: 1,
    ),
    const SingleQuestionModel(
      question: "Who invented the telephone?",
      options: [
        "Thomas Edison",
        "Alexander Graham Bell",
        "Nikola Tesla",
        "Isaac Newton"
      ],
      answerIndex: 1,
    ),
  ];
  bool questionScreen = true;
  int questionIndex = 0;
  int selectedAnswerIndex = -1;
  int noOfCorrectAnswer = 0;

  MaterialStateProperty<Color?> checkAnswer(int buttonIndex) {
    if (selectedAnswerIndex != -1) {
      if (buttonIndex == allQuestions[questionIndex].answerIndex) {
        return const MaterialStatePropertyAll(Colors.green);
      } else if (buttonIndex == selectedAnswerIndex) {
        return const MaterialStatePropertyAll(Colors.red);
      } else {
        return const MaterialStatePropertyAll(null);
      }
    } else {
      return const MaterialStatePropertyAll(null);
    }
  }

  void validateCurrentPage() {
    if (selectedAnswerIndex == -1) {
      return;
    }
    if (selectedAnswerIndex == allQuestions[questionIndex].answerIndex) {
      noOfCorrectAnswer++;
    }
    if (selectedAnswerIndex != -1) {
      if (questionIndex == allQuestions.length - 1) {
        questionScreen = false;
      }
      selectedAnswerIndex = -1;
      setState(() {
        questionIndex++;
      });
    }
  }

  Scaffold isQuestionScreen() {
    if (questionScreen == true) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quiz App",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.w800, color: Colors.red),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text(
                "Question",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text("${questionIndex + 1}/${allQuestions.length}",
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  )),
            ]),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 380,
              height: 100,
              child: Text(
                allQuestions[questionIndex].question,
                style: const TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              height: 50,
              width: 500,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkAnswer(0),
                ),
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    setState(() {
                      selectedAnswerIndex = 0;
                    });
                  }
                },
                child: Text(
                  "A.${allQuestions[questionIndex].options[0]}",
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: 500,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkAnswer(1),
                ),
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    setState(() {
                      selectedAnswerIndex = 1;
                    });
                  }
                },
                child: Text(
                  "B.${allQuestions[questionIndex].options[1]}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: 500,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkAnswer(2),
                ),
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    setState(() {
                      selectedAnswerIndex = 2;
                    });
                  }
                },
                child: Text(
                  "C.${allQuestions[questionIndex].options[2]}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: 500,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkAnswer(3),
                ),
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    setState(() {
                      selectedAnswerIndex = 3;
                    });
                  }
                },
                child: Text(
                  "D.${allQuestions[questionIndex].options[3]}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            validateCurrentPage();
          },
          child: const Icon(
            Icons.forward,
            color: Colors.orange,
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quiz App",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.w800, color: Colors.red),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1hyhO3BKuMbb-Td18rlGTExIMDfuSlrpD8w&usqp=CAU",
              height: 250,
              width: 300,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Congratulations!!!!",
              style: GoogleFonts.romanesco(
                fontSize: 50,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "You have Completed the Quiz",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              "$noOfCorrectAnswer/$questionIndex",
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              height: 50,
              width: 300,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.yellowAccent)),
                  onPressed: () {
                    questionIndex = 0;
                    questionScreen = true;
                    isLoggedIn = false;
                    noOfCorrectAnswer = 0;
                    selectedAnswerIndex = -1;
                    setState(() {});
                  },
                  child: const Text(
                    "Reset",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.red,
                    ),
                  )),
            )
          ],
        ),
      );
    }
  }

  bool isLoggedIn = false;
  @override
  Widget build(BuildContext context) {
    return isLoggedIn ? isQuestionScreen() : LoginScreen();
  }
}
