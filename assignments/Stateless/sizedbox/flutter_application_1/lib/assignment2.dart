import 'package:flutter/material.dart';

class Assignment1 extends StatelessWidget {
  const Assignment1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment1"),
      ),
      body: SizedBox(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.redAccent,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.redAccent,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.redAccent,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.redAccent,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.redAccent,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.redAccent,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
