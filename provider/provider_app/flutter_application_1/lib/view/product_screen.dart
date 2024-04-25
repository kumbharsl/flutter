import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/details_screen.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (e) => const ProductDetails(),
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
