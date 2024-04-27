import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/product_model.dart';

class ProductController with ChangeNotifier {
  ProductModel? productModelObj;

  void addProductData({required ProductModel pObj}) {
    productModelObj = pObj;
  }

  void addToFavorite() {
    productModelObj!.isEmpty = !productModelObj!.isEmpty!;
    notifyListeners();
  }

  void addQuantity() {
    productModelObj!.productCount = productModelObj!.productCount! + 1;
    notifyListeners();
  }

  void removeQuantity() {
    productModelObj!.productCount = productModelObj!.productCount! - 1;
    notifyListeners();
  }
}
