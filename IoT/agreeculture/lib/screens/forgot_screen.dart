import 'package:flutter/material.dart';

class FormatScreen extends StatefulWidget {
  const FormatScreen({super.key});

  @override
  State<FormatScreen> createState() => _FormatScreen();
}

class _FormatScreen extends State<FormatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Password Forget"),
      ),
    );
  }
}
