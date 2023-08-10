import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

// centralizing using the sized box
class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, // use as much width as you can
      child: Column(
        mainAxisAlignment: MainAxisAlignment
            .center, // we can use this way the space-around/between...
        children: [
          const Text('The question', style: TextStyle(color: Colors.white)),
          const SizedBox(height: 30),
          AnswerButton(answerText: 'topper', onTap: () {})
        ],
      ),
    );
  }
}
