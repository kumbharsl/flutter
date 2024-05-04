import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen1.dart';
import 'package:flutter_application_1/screen2.dart';
import 'package:flutter_application_1/screen3.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  int menuIndex = 0;
  List<Widget> widgetLists = const [
    Screen1(),
    Screen2(),
    Screen3(),
  ];
  @override
  Widget build(BuildContext context) {
    final items = [
      const Icon(
        Icons.explore_outlined,
        size: 30,
        color: Colors.white,
      ),
      const Icon(
        Icons.adf_scanner_sharp,
        size: 30,
        color: Colors.white,
      ),
      const Icon(
        Icons.near_me,
        applyTextScaling: true,
        size: 30,
        color: Colors.white,
      ),
    ];
    return SafeArea(
      top: false,
      child: ClipRRect(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: IndexedStack(
            index: menuIndex,
            children: widgetLists,
          ),
          bottomNavigationBar: CurvedNavigationBar(
            buttonBackgroundColor: const Color.fromARGB(134, 92, 208, 1),
            color: const Color.fromARGB(255, 14, 13, 13),
            animationCurve: Curves.easeOutQuint,
            animationDuration: const Duration(milliseconds: 500),
            height: 75,
            backgroundColor: Colors.black,
            items: items,
            index: menuIndex,
            onTap: (index) => setState(() => menuIndex = index),
          ),
        ),
      ),
    );
  }
}
