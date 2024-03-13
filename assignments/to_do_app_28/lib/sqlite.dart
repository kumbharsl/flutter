import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:flutter/widgets.dart';

dynamic database;

class Todo {
  final String title;
  final String description;
  final String date;
  Todo({
    required this.title,
    required this.description,
    required this.date,
  });
  Map<String, dynamic> todoMap() {
    return {'title': title, 'description': description, 'date': date};
  }

  @override
  String toString() {
    return '{title:$title,description:$description,date:$date}';
  }
}

Future insertTodoData(Todo obj) async {
  final localDB = await database;
  await localDB.insert(
    "Todo",
    obj.todoMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

Future<List<Todo>> getTodoData() async {
  final localDB = await database;
  List<Map<String, dynamic>> listTodo = await localDB.query("Todo");
  return List.generate(listTodo.length, (i) {
    return Todo(
      title: listTodo[i]['title'],
      description: listTodo[i]['description'],
      date: listTodo[i]['date'],
    );
  });
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  database = openDatabase(
    join(await getDatabasesPath(), "TodoDB.db"),
    version: 1,
    onCreate: (db, version) async {
      await db.execute('''CREATE TABLE Player(
        title TEXT PRIMARY KEY,
        description TEXT ,
        date TEXT
       )''');
    },
  );
//insert into
  Todo batsman1 = Todo(
    title: "Virat Kohli",
    description: "Hello how are you?",
    date: "12 May 2024",
  );
  insertTodoData(batsman1);
  print(await getTodoData());
}
