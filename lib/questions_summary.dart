import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData.map(
        (currentData) {
          return Row(children: [
            Text(((currentData['question_index'] as int) + 1).toString()),
            Column(
              children: [
                Text(currentData['question'] as String),
                const SizedBox(height: 5),
                Text(currentData['user_answer'] as String),
                Text(currentData['correct_answer'] as String)
              ],
            )
          ]);
        },
      ).toList(),
    );
  }
}
