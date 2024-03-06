import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 20.0),
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRim43FOsSU9F-TXSSABOeBOKxC2UPRthwJRA&usqp=CAU,', // Provide your image path here
                  width: 200.0,
                  height: 200.0,
                ),
              ),
              Container(
                width: 150.0,
                height: 150.0,
                color: Colors.red,
                margin: EdgeInsets.only(bottom: 20.0),
              ),
              Container(
                width: 150.0,
                height: 150.0,
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
