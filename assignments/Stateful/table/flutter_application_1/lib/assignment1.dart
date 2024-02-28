import 'package:flutter/material.dart';

class Application1 extends StatefulWidget {
  const Application1({super.key});
  @override
  State<Application1> createState() => _Application1State();
}

class _Application1State extends State<Application1> {
  int? _count = 0;

  void _printTableValue() {
    setState(() {
      _count = _count! + 2;
    });
    print("$_count");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Table of 2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Click button to print table value"),
            const SizedBox(
              height: 20,
            ),
            Text("$_count"),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: _printTableValue,
              child: const Text("Print"),
            ),
          ],
        ),
      ),
    );
  }
}
