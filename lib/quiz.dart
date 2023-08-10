import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
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

  @override
  Widget build(BuildContext context) {
    final currentScreen = activeScreen == 'start-screen'
        ? StartScreen(switchScreen)
        : const QuestionsScreen();

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
