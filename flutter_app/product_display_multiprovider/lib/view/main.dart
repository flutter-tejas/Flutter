import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:product_display_multiprovider/controllers/product_controller.dart';
import 'package:product_display_multiprovider/controllers/wishlist_controller.dart';
import 'package:product_display_multiprovider/view/get_product_details.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (BuildContext context) {
            return ProductController();
          },
        ),
        ChangeNotifierProvider(
          create: (BuildContext context) {
            return WishListController();
          },
        )
      ],
      builder: (context, child) {
        return MaterialApp(
          title: "Provider Demo",
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: GetProductDetails(),
        );
      },
    );
  }
}
