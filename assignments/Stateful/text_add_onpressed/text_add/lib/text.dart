import 'package:flutter/material.dart';

class Text1 extends StatefulWidget {
  const Text1({super.key});
  @override
  State<Text1> createState() => _Text1();
}

class _Text1 extends State<Text1> {
  int count = 0;
  List<int> digitList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Listview Demo"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(
            () {
              count++;
              digitList.add(count);
            },
          );
        },
        backgroundColor: Colors.amber.shade400,
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: digitList.length,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.blue.shade300,
            alignment: Alignment.center,
            margin: const EdgeInsets.all(5),
            child: Text(
              "${digitList[index]}",
              style: const TextStyle(fontSize: 28),
            ),
          );
        },
      ),
    );
  }
}
