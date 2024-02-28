// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MainApp());
// }

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: QuizApp(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

// class QuizApp extends StatefulWidget {
//   const QuizApp({super.key});
//   @override
//   State createState() => _QuizAppState();
// }

// class QuestionIndexModel {
//   final String? question;
//   final List<String>? options;
//   final int? answerIndex;

//   const QuestionIndexModel({this.question, this.options, this.answerIndex});
// }

// class _QuizAppState extends State {
//   List allQuestions = const [
//     // Question 1
//     QuestionIndexModel(
//       question: "What is the capital of France?",
//       options: ["Paris", "London", "Berlin", "Rome"],
//       answerIndex: 0,
//     ),
//     // Question 2
//     QuestionIndexModel(
//       question: "Who created Python programming language?",
//       options: [
//         "Guido van Rossum",
//         "Mark Zuckerberg",
//         "Steve Jobs",
//         "Linus Torvalds"
//       ],
//       answerIndex: 0,
//     ),
//     // Question 3
//     QuestionIndexModel(
//       question: "Which one is not a data type in Dart Programming Language?",
//       options: ["int", "double", "string", "boolean"],
//       answerIndex: 3,
//     ),
//     // Question 4
//     QuestionIndexModel(
//       question: "What is the square root of 8?",
//       options: ["2", "4", "6", "8"],
//       answerIndex: 0,
//     ),
//     // Question 5
//     QuestionIndexModel(
//       question: "Which language is used in Machine Learning",
//       options: ["Python", "Java", "C++", "JavaScript"],
//       answerIndex: 0,
//     ),
//     // Question 6
//     QuestionIndexModel(
//       question: "What is the largest planet in our solar system?",
//       options: ["Jupiter", "Saturn", "Uranus", "Neptune"],
//       answerIndex: 0,
//     ),
//     // Question 7
//     QuestionIndexModel(
//       question: "What is the capital city of Australia?",
//       options: ["Canberra", "Melbourne", "Sydney", "Brisbane"],
//       answerIndex: 1,
//     ),
//     // Question 8
//     QuestionIndexModel(
//       question: "What  is the currency for India?",
//       options: ["USD", "Rupee", "dollars", "Dollar"],
//       answerIndex: 1,
//     ),
//     // Question 9
//     QuestionIndexModel(
//       question: "Who is the CEO of Tesla Inc.",
//       options: ["Bill Gates", "Mark Zuckerberg", "Elon Musk", "Jeff Bezos"],
//       answerIndex: 2,
//     ),
//     // Question 10
//     QuestionIndexModel(
//       question: "What is the capital city of India",
//       options: ["Delhi", "Mumbai", "Bangalore", "Agra"],
//       answerIndex: 0,
//     )
//   ];

//   bool questionScreen = true;
//   int questionIndex = 0;
//   int optionColor1 = -1;
//   int selectedAnswerIndex = 0;
//   int nextQuestionindex = 0;

//   Scaffold isQuestionScreen() {
//     if (questionScreen == true) {
//       return Scaffold(
//         appBar: AppBar(title: Text("Quiz")),
//       );
//     }
//   }

//   @override
//   Widget build(BuildingContext context) {
//     return isQuestionScreen();
//   }
// }
