import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: QuizApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});
  @override
  State createState() => _QuizAppState();
}

class QuestionIndexModel {
  final String? question;
  final List<String>? options;
  final int? answerIndex;

  const QuestionIndexModel({this.question, this.options, this.answerIndex});
}

class _QuizAppState extends State {
  List allQuestions = const [
    // Question 1
    QuestionIndexModel(
      question: "What is the capital of France?",
      options: ["Paris", "London", "Berlin", "Rome"],
      answerIndex: 0,
    ),
    // Question 2
    QuestionIndexModel(
      question: "Who created Python programming language?",
      options: [
        "Guido van Rossum",
        "Mark Zuckerberg",
        "Steve Jobs",
        "Linus Torvalds"
      ],
      answerIndex: 0,
    ),
    // Question 3
    QuestionIndexModel(
      question: "Which one is not a data type in Dart Programming Language?",
      options: ["int", "double", "string", "boolean"],
      answerIndex: 3,
    ),
    // Question 4
    QuestionIndexModel(
      question: "What is the square root of 8?",
      options: ["2", "4", "6", "8"],
      answerIndex: 0,
    ),
    // Question 5
    QuestionIndexModel(
      question: "Which language is used in Machine Learning",
      options: ["Python", "Java", "C++", "JavaScript"],
      answerIndex: 0,
    ),
    // Question 6
    QuestionIndexModel(
      question: "What is the largest planet in our solar system?",
      options: ["Jupiter", "Saturn", "Uranus", "Neptune"],
      answerIndex: 0,
    ),
    // Question 7
    QuestionIndexModel(
      question: "What is the capital city of Australia?",
      options: ["Canberra", "Melbourne", "Sydney", "Brisbane"],
      answerIndex: 1,
    ),
    // Question 8
    QuestionIndexModel(
      question: "What  is the currency for India?",
      options: ["USD", "Rupee", "dollars", "Dollar"],
      answerIndex: 1,
    ),
    // Question 9
    QuestionIndexModel(
      question: "Who is the CEO of Tesla Inc.",
      options: ["Bill Gates", "Mark Zuckerberg", "Elon Musk", "Jeff Bezos"],
      answerIndex: 2,
    ),
    // Question 10
    QuestionIndexModel(
      question: "What is the capital city of India",
      options: ["Delhi", "Mumbai", "Bangalore", "Agra"],
      answerIndex: 0,
    )
  ];
  int questionScreen = -1;
  int questionIndex = 0;
  int optionColor1 = -1;
  int selectedAnswerIndex = 0;
  int correctanswer = 0;

  void answerQuestion() {
    if (selectedAnswerIndex == -1) {
      return;
    }
    if (selectedAnswerIndex == allQuestions[questionIndex].answerIndex) {
      correctanswer++;
    }
    if (selectedAnswerIndex != -1) {
      if (questionIndex < allQuestions.length - 1) {
        setState(() {
          questionIndex++;
        });
      } else {
        questionIndex = 0;
        selectedAnswerIndex = -1;
        questionScreen = 1;
      }
    }
  }

  MaterialStatePropertyAll<Color?> buttonColor(int button) {
    if (optionColor1 != -1) {
      if (button == allQuestions[questionIndex].answerIndex) {
        return const MaterialStatePropertyAll(Colors.green);
      } else if (button == selectedAnswerIndex) {
        return const MaterialStatePropertyAll(Colors.red);
      } else {
        return const MaterialStatePropertyAll(null);
      }
    } else {
      return const MaterialStatePropertyAll(null);
    }
  }

  String result() {
    if (correctanswer <= 5) {
      return "Better Luck Next time...";
    } else {
      return "Congragulations..!";
    }
  }

  TextStyle textStyle() {
    if (correctanswer <= 5) {
      return const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 30,
        color: Colors.red,
      );
    } else {
      return const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 35,
        color: Colors.green,
      );
    }
  }

  String resultImage() {
    if (correctanswer <= 5) {
      return "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRRHVwmBs8B-2lX61tExit0gEvy3M7h5n4dA&usqp=CAU";
    } else {
      return "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmoGE8pGXE4aUURpYIETqvw6W5RZB-iVvKdw&usqp=CAU";
    }
  }

  Scaffold isQuestionScreen() {
    if (questionScreen == -1) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5j6AnOW6Vt7sol1f8Gr3j0CW1vpjoCasue5Rlnn86jMUIN3k4I3upUg1q6Z_gqSAWzsk&usqp=CAU',
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Learn Flutter the fun way!",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    questionScreen = 0;
                  });
                },
                child: const Text(
                  "Start Quiz",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    } else if (questionScreen == 0) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            "QuizApp",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              color: Colors.black,
              shadows: [
                Shadow(
                  blurRadius: 2.0,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.amber.shade400,
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Questions : ",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "${questionIndex + 1}/${allQuestions.length}",
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              SizedBox(
                width: 380,
                height: 80,
                child: Text(
                  allQuestions[questionIndex].question,
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  if (optionColor1 == -1) {
                    optionColor1 = 0;
                    setState(() {
                      selectedAnswerIndex = 0;
                    });
                  }
                },
                style: ButtonStyle(
                  backgroundColor: buttonColor(0),
                ),
                child: Text(
                  "A. ${allQuestions[questionIndex].options[0]}",
                  style: const TextStyle(fontSize: 25),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  if (optionColor1 == -1) {
                    optionColor1 = 0;
                    setState(() {
                      selectedAnswerIndex = 1;
                    });
                  }
                },
                style: ButtonStyle(
                  backgroundColor: buttonColor(1),
                ),
                child: Text(
                  "B. ${allQuestions[questionIndex].options[1]}",
                  style: const TextStyle(fontSize: 25),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  if (optionColor1 == -1) {
                    optionColor1 = 0;
                    setState(() {
                      selectedAnswerIndex = 2;
                    });
                  }
                },
                style: ButtonStyle(
                  backgroundColor: buttonColor(2),
                ),
                child: Text(
                  "C. ${allQuestions[questionIndex].options[2]}",
                  style: const TextStyle(fontSize: 25),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  if (optionColor1 == -1) {
                    optionColor1 = 0;
                    setState(() {
                      selectedAnswerIndex = 3;
                    });
                  }
                },
                style: ButtonStyle(
                  backgroundColor: buttonColor(3),
                ),
                child: Text(
                  "D. ${allQuestions[questionIndex].options[3]}",
                  style: const TextStyle(fontSize: 25),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            answerQuestion();
            optionColor1 = -1;
            setState(() {});
          },
          backgroundColor: Colors.blue,
          child: const Icon(
            Icons.forward,
            color: Colors.orange,
          ),
        ),
      );
    } else {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            'Result',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          bottomOpacity: 2,
          backgroundColor: Colors.amber.shade400,
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Image.network(
                resultImage(),
                //"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmoGE8pGXE4aUURpYIETqvw6W5RZB-iVvKdw&usqp=CAU",
                height: 300,
                width: 400,
              ),
              const Text(
                "Congratulation...",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "You have completed $correctanswer/${allQuestions.length}",
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Text(
                result(),
                style: const TextStyle(
                  color: Colors.red,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(
                    () {
                      questionScreen = -1;
                      correctanswer = 0;
                    },
                  );
                },
                child: const Text(
                  "Reset",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return isQuestionScreen();
  }
}
