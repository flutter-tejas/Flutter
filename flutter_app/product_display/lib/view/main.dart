import 'package:flutter/material.dart';
import 'package:product_display/controllers/getproductcontroller.dart';
import 'package:product_display/view/getproduct.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return GetProductController();
      },
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: GetProduct(),
      ),
    );
  }
}
