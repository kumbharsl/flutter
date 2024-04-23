import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChangeNots extends StatefulWidget {
  const ChangeNots({super.key});

  @override
  State<ChangeNots> createState() => _ChangeNots();
}

class _ChangeNots extends State<ChangeNots> {
  @override
  Widget build(BuildContext context) {
    log("IN MAINAPP BUILD");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Change Nots"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(Provider.of<Company>(context).companyName),
          const SizedBox(height: 30),
          Text("${Provider.of<Company>(context).empCount}"),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              Provider.of<Company>(context, listen: false)
                  .changeCompany("Facebook", 500);
            },
            child: const Text("Change Company"),
          ),
          const SizedBox(height: 30),
          const NormalClass(),
        ],
      ),
    );
  }
}

class NormalClass extends StatelessWidget {
  const NormalClass({super.key});
  @override
  Widget build(BuildContext context) {
    log("IN NORMAL CLASS BUILD");
    return const Text("hello");
  }
}

class Company extends ChangeNotifier {
  String companyName;
  int empCount;
  Company({required this.companyName, required this.empCount});

  void changeCompany(String companyName, int empCount) {
    this.companyName = companyName;
    this.empCount = empCount;
    notifyListeners();
  }
}
