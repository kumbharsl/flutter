// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              "Happy Republic Day",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 400,
                height: 80,
                color: Colors.orange.shade900,
              ),
              Container(
                width: 400,
                height: 80,
                color: Colors.white,
                child: Image.network(
                  "https://t3.ftcdn.net/jpg/03/11/13/46/240_F_311134651_RXMvbUB3h089Js0ODvuHrttmsON9Tpik.jpg",
                  width: double.infinity,
                ),
              ),
              Container(
                width: 400,
                height: 80,
                color: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
