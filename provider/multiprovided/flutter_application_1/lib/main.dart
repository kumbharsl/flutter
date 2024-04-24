import 'dart:developer';
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
    log("IN BUILD MY APP");
    return MultiProvider(
      providers: [
        Provider(create: (context) {
          return Employee(empName: "Kanha", empId: 10);
        }),
        ChangeNotifierProvider(create: (context) {
          return Project(projectName: "HealthCare", devType: "Backend Dev");
        }),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
