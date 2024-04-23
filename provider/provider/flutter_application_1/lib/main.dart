import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) {
        return Company(companyName: "Google", empCount: 250);
      },
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
