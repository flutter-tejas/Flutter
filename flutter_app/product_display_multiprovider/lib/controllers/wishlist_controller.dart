import 'package:flutter/material.dart';
import 'package:product_display_multiprovider/models/product_model.dart';

class WishListController with ChangeNotifier {
  List<ProductModel> listOfWishlistProduct = [];

  void addDataToWishlist({ProductModel? obj}) {
    listOfWishlistProduct.add(obj!);
  }

  void removeWishList({required int index}) {
    listOfWishlistProduct.removeAt(index);
    notifyListeners();
  }
}
