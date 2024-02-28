import 'package:flutter/material.dart';

class Application extends StatefulWidget {
  const Application({super.key});
  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  int? selectedIndex = 0;
  final List<String> imageList = [
    "https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072823_640.jpg",
    "https://cdn.pixabay.com/photo/2015/06/19/21/24/avenue-815297_640.jpg",
    "https://cdn.pixabay.com/photo/2017/02/08/17/24/fantasy-2049567_640.jpg",
    "https://cdn.pixabay.com/photo/2013/10/02/23/03/mountains-190055_640.jpg",
  ];

  void showNextImage() {
    setState(() {
      selectedIndex = selectedIndex! + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Display Images"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              imageList[selectedIndex!],
              width: 300,
              height: 300,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: showNextImage,
              child: const Text("Next"),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  selectedIndex = 0;
                });
              },
              child: const Text("Reset"),
            ),
          ],
        ),
      ),
    );
  }
}
