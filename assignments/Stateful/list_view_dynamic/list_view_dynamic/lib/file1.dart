import 'package:flutter/material.dart';

class ListView1 extends StatefulWidget {
  const ListView1({super.key});
  @override
  State<ListView1> createState() => _ListView();

  static builder(
      {required int itemCount,
      required Null Function(dynamic context, dynamic index) itemBuilder}) {}
}

class _ListView extends State<ListView1> {
  // ignore: non_constant_identifier_names
  List<String> ImageList = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFdukQdGS2w2Kz8PPZ2JnWnpcCvvaYPTplDUxzil072g&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFdukQdGS2w2Kz8PPZ2JnWnpcCvvaYPTplDUxzil072g&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFdukQdGS2w2Kz8PPZ2JnWnpcCvvaYPTplDUxzil072g&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFdukQdGS2w2Kz8PPZ2JnWnpcCvvaYPTplDUxzil072g&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFdukQdGS2w2Kz8PPZ2JnWnpcCvvaYPTplDUxzil072g&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFdukQdGS2w2Kz8PPZ2JnWnpcCvvaYPTplDUxzil072g&s",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Listview",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.amber,
      ),
      body: ListView.builder(
        itemCount: ImageList.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(10),
            child: Image.network(
              ImageList[index],
            ),
          );
        },
      ),
    );
  }
}
