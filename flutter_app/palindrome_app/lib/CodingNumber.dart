import 'package:flutter/material.dart';

class CodingNumber extends StatefulWidget {
  const CodingNumber({super.key});

  @override
  State<CodingNumber> createState() => _PalindromeState();
}

class _PalindromeState extends State<CodingNumber> {
  //palindrome
  final List lst1 = [11, 13, 121, 343];
  int _count = 0;
  void _printPalindromeValue() {
    _count = 0;
    for (int i = 0; i < lst1.length; i++) {
      int temp = lst1[i];
      int rev = 0;
      while (temp != 0) {
        int rem = temp % 10;
        rev = rev * 10 + rem;
        temp = temp ~/ 10;
      }
      if (lst1[i] == rev) {
        _count++;
        setState(() {});
      }
    }
  }

  //Amstrong number
  final List lst2 = [153, 1634];
  int _count1 = 0;
  void _printAmstrongValue() {
    _count1 = 0;
    for (int i = 0; i < lst1.length; i++) {
      int sum = 0;
      int temp = lst2[i];
      int num = 0;
      while (temp != 0) {
        temp = temp ~/ 10;
        num++;
      }
      temp = lst2[i];
      while (temp != 0) {
        int Digit = temp % 10;
        int res = 1;
        for (int i = 0; i < num; i++) {
          res = res * Digit;
        }
        sum = sum + res;
        temp = temp ~/ 10;
      }
      if (sum == lst2[i]) {
        _count1++;
        setState(() {});
      }
    }
  }

  final List lst3 = [145, 56, 456];
  int _count2 = 0;

  void _printStrongValue() {
    _count2 = 0;
    for (int i = 0; i < lst3.length; i++) {
      int factorial, digit;
      int sum = 0;
      int temp = lst3[i];
      while (temp != 0) {
        digit = temp % 10;
        factorial = 1;
        for (int j = 1; j <= digit; j++) {
          factorial *= j;
        }
        sum += factorial;
        temp ~/= 10;
      }
      if (sum == lst3[i]) {
        _count2++;
      }
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Coding Number",
        ),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            //Palindrome Button
            ElevatedButton(
              onPressed: _printPalindromeValue,
              child: const Text("Palindrome"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(130, 204, 39, 0.784)),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "$_count",
            ),
            const SizedBox(
              height: 20,
            ),
            //Amstrong Button
            ElevatedButton(
              onPressed: _printAmstrongValue,
              child: const Text("Amstrong"),
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "$_count1",
            ),
            const SizedBox(
              height: 20,
            ),

            //Strong Button
            ElevatedButton(
              onPressed: _printStrongValue,
              child: const Text("strong"),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.cyan),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "$_count2",
            ),
          ],
        ),
      ),
    );
  }
}
