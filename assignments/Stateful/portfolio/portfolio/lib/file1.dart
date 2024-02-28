// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  int counter = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Portfolio",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.grey,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        backgroundColor: Colors.blue.shade200,
        child: const Text(
          "Next",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                (counter >= 1)
                    ? const Text(
                        "Name: Sagar Kumbhar",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    : Container(),
                const SizedBox(
                  height: 20,
                ),
                (counter >= 2)
                    ? Container(
                        child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0_pw1BpBfuZAevTRIg7RFQD1NZzdrEy016w&usqp=CAU",
                        ),
                        alignment: Alignment.center,
                      )
                    : Container(),
                const SizedBox(
                  height: 20,
                ),
                (counter >= 3)
                    ? const Text(
                        "College Name: SSPU",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    : Container(),
                const SizedBox(
                  height: 20,
                ),
                (counter >= 4)
                    ? Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0_pw1BpBfuZAevTRIg7RFQD1NZzdrEy016w&usqp=CAU",
                      )
                    : Container(),
                const SizedBox(
                  height: 20,
                ),
                (counter >= 5)
                    ? const Text(
                        "Dream Company:  Google",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    : Container(),
                const SizedBox(
                  height: 20,
                ),
                (counter >= 6)
                    ? Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0_pw1BpBfuZAevTRIg7RFQD1NZzdrEy016w&usqp=CAU",
                      )
                    : Container(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
