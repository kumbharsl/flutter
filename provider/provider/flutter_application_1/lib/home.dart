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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Provider State Mgmt"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(Provider.of<Company>(context).companyName),
            const SizedBox(height: 30),
            Text("${Provider.of<Company>(context).empCount}"),
          ],
        ),
      ),
    );
  }
}

class Company {
  String companyName;
  int empCount;

  Company({required this.companyName, required this.empCount});
}
