import "dart:developer";
import "package:flutter/material.dart";
import "package:provider/provider.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    log("IN MYAPP BUILD");
    return MultiProvider(
      providers: [
        Provider(
          create: (context) {
            return Player(playerName: "Virat", jerNo: 18);
          },
        ),
        ChangeNotifierProvider(create: (context) {
          return Match(matchNo: 200, runs: 8800);
        }),
      ],
      child: const MaterialApp(
        home: MatchSummary(),
      ),
    );
  }
}

class MatchSummary extends StatefulWidget {
  const MatchSummary({super.key});
  @override
  State createState() => _MatchSummaryState();
}

class _MatchSummaryState extends State {
  @override
  Widget build(BuildContext context) {
    log("IN MATCH SUMMARY BUILD");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Provider Demo"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text(Provider.of<Player>(context).playerName),
          const SizedBox(height: 50),
          Text("${Provider.of<Player>(context).jerNo}"),
          const SizedBox(height: 50),
          // Consumer(
          //   builder: (context, value, child) {
          //     return Text("${Provider.of<Match>(context).matchNo}");
          //   },
          // ),
          // Text("${Provider.of<Match>(context).matchNo}"),
          const SizedBox(height: 50),
          Text("${Provider.of<Match>(context).runs}"),
          const SizedBox(height: 50),
          ElevatedButton(
            onPressed: () {
              Provider.of<Match>(context, listen: false).changeData(250, 8900);
            },
            child: const Text("Change data"),
          ),
          const SizedBox(
            height: 20,
          ),
          const NormalClass(),
        ],
      ),
    );
  }
}

class NormalClass extends StatelessWidget {
  const NormalClass({super.key});
  @override
  Widget build(BuildContext context) {
    log("IN NORMAL CLASS BUILD");
    return Text("${Provider.of<Match>(context).matchNo}");
  }
}

class Player {
  String playerName;
  int jerNo;
  Player({required this.playerName, required this.jerNo});
}

class Match with ChangeNotifier {
  int matchNo;
  int runs;
  Match({required this.matchNo, required this.runs});
  void changeData(int matchNo, int runs) {
    this.matchNo = matchNo;
    this.runs = runs;
    notifyListeners();
  }
}
