import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/results_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  // return the current state
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

// returning a widget that has a state
// returning the materialApp
class _QuizState extends State<Quiz> {
  // I can pass a widgeete for a var and change it conditionaly
  // when we use VAR to declare a variable and assign that var with
  // another type the var type is infer by one who we assign

  String? activeScreen;
  List<String> selectedAnswers = [];

  // executes before the build
  @override
  void initState() {
    super.initState();
    activeScreen = 'start-screen';
  }

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    // if it is equal mean that finished
    if (selectedAnswers.length == questions.length) {
      setState(() {
        // selectedAnswers = [];
        activeScreen = 'result-screen';
      });
    }
  }

  void restarting() {
    if (selectedAnswers.isNotEmpty) {
      setState(() {
        selectedAnswers = [];
        activeScreen = 'start-screen';
      });
    }
  }

  Widget? gettingTheCorrectScreen(String nameScr) {
    switch (nameScr) {
      case 'start-screen':
        return StartScreen(switchScreen);
      case 'questions-screen':
        return QuestionsScreen(onSelectAnswer: chooseAnswer);
      case 'result-screen':
        return ResultScreen(
          chosenAnswers: selectedAnswers,
          onRestart: restarting,
        );
      default:
        return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentScreen = gettingTheCorrectScreen(activeScreen!);

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 78, 13, 151),
              Color.fromARGB(255, 107, 15, 168)
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: currentScreen,
        ),
      ),
    );
  }
}
