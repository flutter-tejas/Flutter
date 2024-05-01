import 'package:flutter/material.dart';
import 'package:product_display/models/productmodel.dart';

class GetProductController extends ChangeNotifier {
  ProductModel? productModelObj;

  void addProductData({required ProductModel pObj}) {
    productModelObj = pObj;
  }

  void addToFavourite() {
    productModelObj!.isFavourite = !productModelObj!.isFavourite!;
    notifyListeners();
  }

  void addQuantity() {
    productModelObj!.count = productModelObj!.count! + 1;
    notifyListeners();
  }

  void removeQuantity() {
    productModelObj!.count = productModelObj!.count! - 1;
    notifyListeners();
  }
}
