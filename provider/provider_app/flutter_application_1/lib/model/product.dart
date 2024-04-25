import 'package:flutter/material.dart';

class ProductName extends ChangeNotifier {
  String imageURL;
  String productName;
  String productPrice;
  int productCount;

  ProductName({
    required this.imageURL,
    required this.productName,
    required this.productPrice,
    required this.productCount,
  });
  void addDisplay() {}
  void add() {}
  void addProduct() {}
  void addCount() {}
  void removeCount() {}
}
