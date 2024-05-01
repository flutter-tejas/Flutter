class ProductModel {
  String? productImage;
  String? productName;
  String? price;
  bool isFavorite = false;
  int quantity = 0;

  ProductModel({
    this.productImage,
    this.isFavorite = false,
    this.price,
    this.productName,
    this.quantity = 0,
  });
}
