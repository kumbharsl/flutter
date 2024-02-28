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
                  color: Color.fromARGB(255, 19, 18, 18),
                ),
              ),
            ),
            backgroundColor: Colors.orange.shade400),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomRight,
              colors: [
                Colors.orange.shade400,
                Colors.white,
                Colors.green.shade400,
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 350,
                height: 80,
                color: Colors.orange.shade900,
              ),
              Container(
                width: 350,
                height: 80,
                color: Colors.white,
                child: Image.network(
                  "https://t3.ftcdn.net/jpg/03/11/13/46/240_F_311134651_RXMvbUB3h089Js0ODvuHrttmsON9Tpik.jpg",
                  width: double.infinity,
                ),
              ),
              Container(
                width: 350,
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
