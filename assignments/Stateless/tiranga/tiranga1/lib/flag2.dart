import 'package:flutter/material.dart';

class Flag extends StatelessWidget {
  const Flag({Key? key});

  @override
  Widget build(BuildContext context) {
    String ashoka =
        'https://cdn.pixabay.com/photo/2023/04/06/16/29/ashoka-chakra-7904695_960_720.png';

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Indian Flag',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.amber,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 251, 171, 50),
              Color.fromARGB(255, 255, 255, 255),
              Color.fromARGB(255, 113, 255, 118),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        // margin: EdgeInsets.only(top: 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 700,
              width: 10,
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 60),
                  height: 80,
                  width: 300,
                  decoration: const BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(80.0),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 80,
                  width: 300,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                    ),
                  ),
                  child: Image.network(ashoka),
                ),
                Container(
                  height: 80,
                  width: 300,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10.0),
                      bottomRight: Radius.circular(80.0),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                Text(
                  'भारतीय ',
                  style: TextStyle(fontSize: 50),
                ),
                Text(
                  'गणराज्य ',
                  style: TextStyle(fontSize: 50),
                ),
                Text(
                  'दिवस ',
                  style: TextStyle(fontSize: 50),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
