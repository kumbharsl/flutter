import 'package:agreeculture/screens/login_screen.dart';
import 'package:agreeculture/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

void main() async {
  runApp(const MyApp());
  database = openDatabase(
    join(await getDatabasesPath(), "Info1DB.db"),
    version: 1,
    onCreate: (db, version) async {
      await db.execute('''CREATE TABLE Sign(
        name TEXT,
        phone TEXT PRIMARY KEY,
        username TEXT,
        password TEXT
      )''');
    },
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const WelcomeScreen(),
    );
  }
}
