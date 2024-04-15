import 'package:drawer/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Drawer Demo",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: const Center(
        child: Text("Data"),
      ),
      drawer: Drawer(
        shape: Border.all(color: Colors.white12),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            const Center(
              child: Text(
                "Expense Manager",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyApp1()),
                          );
                        }
                      });
                    },
                    child: const Text(
                      "My Profile",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyApp1()),
                          );
                        }
                      });
                    },
                    child: const Text(
                      "data",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyApp1()),
                          );
                        }
                      });
                    },
                    child: const Text(
                      "data",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyApp1()),
                          );
                        }
                      });
                    },
                    child: const Text(
                      "data",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyApp1()),
                          );
                        }
                      });
                    },
                    child: const Text(
                      "data",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyApp1()),
                          );
                        }
                      });
                    },
                    child: const Text(
                      "data",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.close,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
