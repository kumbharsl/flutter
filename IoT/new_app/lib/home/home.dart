import 'package:agreeculture/home/screen1.dart';
import 'package:agreeculture/home/screen2.dart';
import 'package:agreeculture/home/screen3.dart';
import 'package:agreeculture/home/screen4.dart';
import 'package:agreeculture/home/screen5.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

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
    Screen4(),
    Screen5(),
  ];
  @override
  Widget build(BuildContext context) {
    final items = [
      const Icon(Icons.home, size: 30),
      const Icon(Icons.search, size: 30),
      const Icon(Icons.add, size: 30),
      const Icon(Icons.list, size: 30),
      const Icon(Icons.person, size: 30),
    ];
    return SafeArea(
      top: false,
      child: ClipRRect(
        child: Scaffold(
          // backgroundColor: Colors.transparent,
          // appBar: AppBar(
          //   actions: [
          //     IconButton(
          //       onPressed: () {},
          //       icon:
          //           const Icon(Icons.info_outline_rounded, color: Colors.white),
          //     ),
          //   ],
          //   backgroundColor: Colors.blue,
          //   title: const Text(
          //     "Smart Agreeculture System",
          //     style: TextStyle(color: Colors.white),
          //   ),
          // ),
          body: IndexedStack(
            index: menuIndex,
            children: widgetLists,
          ),
          bottomNavigationBar: CurvedNavigationBar(
            buttonBackgroundColor: Colors.blue.shade300,
            color: Colors.grey.shade400,
            animationCurve: Curves.easeInOut,
            animationDuration: const Duration(milliseconds: 500),
            // animationCurve: Curves.linear,
            height: 50,
            backgroundColor: Colors.grey.shade200,
            items: items,
            index: menuIndex,
            onTap: (index) => setState(() => menuIndex = index),
          ),
        ),
      ),
    );
  }
}
