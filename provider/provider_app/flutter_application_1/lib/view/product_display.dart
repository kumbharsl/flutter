import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/product_controller.dart';
import 'package:provider/provider.dart';

class ProductDisplay extends StatefulWidget {
  const ProductDisplay({super.key});

  @override
  State<ProductDisplay> createState() => _ProductDetails();
}

class _ProductDetails extends State<ProductDisplay> {
  @override
  Widget build(BuildContext context) {
    var providerObj = Provider.of<ProductController>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade300,
        title: const Text(
          "Product Display",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Image.network("${providerObj.productModelObj?.productImage}"),
              const SizedBox(height: 10),
              Text("${providerObj.productModelObj?.productName}"),
              const SizedBox(height: 10),
              Text("${providerObj.productModelObj?.productPrice}"),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Consumer<ProductController>(
                    builder: (context, value, child) {
                      return GestureDetector(
                        onTap: () {
                          providerObj.addToFavorite();
                        },
                        child: Icon(
                          (providerObj.productModelObj!.isEmpty!)
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
                        child: Icon(
                          Icons.add,
                        ),
                      ),
                      SizedBox(width: 5),
                      Consumer<ProductController>(
                        builder: (context, value, child) {
                          log("IN QUANTITY");
                          return Text(
                              "${providerObj.productModelObj?.productCount}");
                        },
                      ),
                      const SizedBox(width: 5),
                      GestureDetector(
                        onTap: () {
                          providerObj.removeQuantity();
                        },
                        child: Icon(Icons.remove),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
