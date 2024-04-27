import 'package:flutter/material.dart';

class ProductModel extends ChangeNotifier {
  String? productImage;
  String? productName;
  String? productPrice;
  int? productCount = 0;
  bool? isEmpty = false;

  ProductModel({
    this.productImage,
    this.productName,
    this.productPrice,
    this.productCount,
    this.isEmpty,
  });
}
