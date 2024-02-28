import 'package:flutter/material.dart';

class Assignment1 extends StatelessWidget {
  const Assignment1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment1"),
        backgroundColor: Colors.amber,
        actions: const [
          Icon(
            Icons.notifications,
          ),
        ],
      ),
      body: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                  color: Colors.blue,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.orange,
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
                  color: Colors.blue,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.orange,
                ),
              ],
            ),
          ],
          //       height: 100,
          //       width: 100,
          //       color: Colors.red,
          //     ),
          //     Container(
          //       height: 100,
          //       width: 100,
          //       color: Colors.blue,
          //     ),
          //     Container(
          //       height: 100,
          //       width: 100,
          //       color: Colors.orange,
          //     ),
          //   ],
          // ),
          // // Row(
          // //   mainAxisAlignment: MainAxisAlignment.spaceAround,
          // //   children: [
          // //     Container(
          // //       height: 100,
          // //       width: 100,
          // //       color: Colors.red,
          // //     ),
          // //     Container(
          // //       height: 100,
          // //       width: 100,
          // //       color: Colors.blue,
          // //     ),
          // //     Container(
          // //       height: 100,
          // //       width: 100,
          // //       color: Colors.orange,
          // //     ),
          // //   ],
          // // ),
        ),
      ),
    );
  }
}
