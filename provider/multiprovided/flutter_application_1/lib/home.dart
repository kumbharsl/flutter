import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State createState() => _HomePage();
}

class _HomePage extends State {
  @override
  Widget build(BuildContext context) {
    log("IN BUILD FRAMEWORK");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("MultiProvider State Mgmt"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              Provider.of<Employee>(context).empName,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "${Provider.of<Employee>(context).empId}",
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              Provider.of<Project>(context).projectName,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              Provider.of<Project>(context).devType,
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.blue.shade400),
              ),
              onPressed: () {
                Provider.of<Project>(context, listen: false)
                    .changeProject("EdTech", "Mibile Dev");
              },
              child: const Text(
                "Change Project",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Employee {
  String empName;
  int empId;
  Employee({required this.empName, required this.empId});
}

class Project with ChangeNotifier {
  String projectName;
  String devType;
  Project({required this.projectName, required this.devType});

  void changeProject(String projectName, String devType) {
    this.projectName = projectName;
    this.devType = devType;
    notifyListeners();
  }
}
