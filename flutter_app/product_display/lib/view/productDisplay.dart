import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:product_display/controllers/getproductcontroller.dart';

class ProductDisplay extends StatefulWidget {
  const ProductDisplay({super.key});

  @override
  State<ProductDisplay> createState() => _ProductDisplayState();
}

class _ProductDisplayState extends State<ProductDisplay> {
  @override
  Widget build(BuildContext context) {
    var providerObj = Provider.of<GetProductController>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Display"),
      ),
      body: Column(
        children: [
          Image.network("${providerObj.productModelObj!.productImage}"),
          const SizedBox(
            height: 200,
          ),
          Text("Name:${providerObj.productModelObj!.productName}"),
          const SizedBox(
            height: 20,
          ),
          Text("Price:${providerObj.productModelObj!.productPrice}"),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Consumer<GetProductController>(
                builder: (context, provider, child) {
                  return GestureDetector(
                    onTap: () {
                      providerObj.addToFavourite();
                    },
                    child: Icon(
                      (providerObj.productModelObj!.isFavourite!)
                          ? Icons.favorite_rounded
                          : Icons.favorite_outline_rounded,
                    ),
                  );
                },
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      providerObj.addQuantity();
                    },
                    child:const Icon(
                      Icons.add,
                    ),
                  ),
                 const SizedBox(
                    width: 5,
                  ),
                  Consumer<GetProductController>(
                    builder: (context, value, child) {
                      return Text("${providerObj.productModelObj?.count}");
                    },
                  ),
                 const  SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      providerObj.removeQuantity();
                    },
                    child:const  Icon(Icons.remove),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
