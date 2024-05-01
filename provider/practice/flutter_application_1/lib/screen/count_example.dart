import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/count_provider.dart';
import 'package:provider/provider.dart';

class CountScreen extends StatefulWidget {
  const CountScreen({Key? key}) : super(key: key);

  @override
  State<CountScreen> createState() => _CountScreenState();
}

class _CountScreenState extends State<CountScreen> {
  @override
  void initState() {
    super.initState();
    final countProvider = Provider.of<CountProvider>(context, listen: false);
    Timer.periodic(Duration(seconds: 2), (timer) {
      countProvider.setCount();
    });
  }

  @override
  Widget build(BuildContext context) {
    log("IN Build");
    final countProvider = Provider.of<CountProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Provider",
        ),
      ),
      body: Center(
        child: Consumer<CountProvider>(builder: (context, value, child) {
          log("IN CONSUMER");
          return Text(
            value.count.toString(),
            style: const TextStyle(
              fontSize: 24,
            ),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countProvider.setCount();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
