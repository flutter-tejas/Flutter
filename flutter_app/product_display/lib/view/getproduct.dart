import 'package:flutter/material.dart';
import 'package:product_display/controllers/getproductcontroller.dart';
import 'package:product_display/models/productmodel.dart';
import 'package:product_display/view/productDisplay.dart';
import 'package:provider/provider.dart';

class GetProduct extends StatefulWidget {
  const GetProduct({super.key});

  @override
  State<GetProduct> createState() => _GetProductState();
}

class _GetProductState extends State<GetProduct> {
  final TextEditingController _imageController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Get Product"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextField(
              controller: _imageController,
              decoration: InputDecoration(
                hintText: "Image",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                hintText: "Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: _priceController,
              decoration: InputDecoration(
                hintText: "Price",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                var obj = ProductModel(
                  isFavourite: false,
                  productImage: _imageController.text.trim(),
                  productName: _nameController.text.trim(),
                  productPrice: int.parse(_priceController.text),
                  count: 0,
                );
                Provider.of<GetProductController>(context, listen: false)
                    .addProductData(pObj: obj);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => const ProductDisplay(),
                  ),
                );
              },
              child: const Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
