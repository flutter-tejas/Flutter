class ProductModel {
  String? productImage;
  String? productName;
  int? productPrice;
  bool? isFavourite = false;
  int? count = 0;
  ProductModel({
    this.productName,
    this.productImage,
    this.productPrice,
    this.isFavourite,
    this.count,
  });
}
