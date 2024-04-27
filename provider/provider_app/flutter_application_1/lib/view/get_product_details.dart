import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/product_controller.dart';
import 'package:flutter_application_1/model/product_model.dart';
import 'package:flutter_application_1/view/product_display.dart';
import 'package:provider/provider.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  final TextEditingController _productImageTextEditingController =
      TextEditingController();
  final TextEditingController _productNameTextEditingController =
      TextEditingController();
  final TextEditingController _productPriceTextEditingController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue.shade300,
        title: const Text(
          "Product View",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextFormField(
                controller: _productImageTextEditingController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter URL';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  hintStyle: TextStyle(color: Colors.black26),
                  alignLabelWithHint: true,
                  label: Text("Image URL"),
                  hintText: 'Enter Image URL',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        20,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: _productNameTextEditingController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter Product Name';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  hintStyle: TextStyle(color: Colors.black26),
                  label: Text("Product Name"),
                  hintText: 'Enter Product Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        20,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: _productPriceTextEditingController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter Price';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  hintStyle: TextStyle(color: Colors.black26),
                  label: Text("Product Price"),
                  hintText: 'Enter Product Price',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        20,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(Colors.blue.shade200),
                ),
                onPressed: () {
                  var tempObj = ProductModel(
                    isEmpty: false,
                    productPrice:
                        _productPriceTextEditingController.text.trim(),
                    productName: _productNameTextEditingController.text.trim(),
                    productImage:
                        _productImageTextEditingController.text.trim(),
                    productCount: 0,
                  );

                  Provider.of<ProductController>(context, listen: false)
                      .addProductData(pObj: tempObj);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (e) => const ProductDisplay(),
                    ),
                  );
                },
                child: const Text("Submit"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
