import 'package:flutter/material.dart';
import 'package:quiz_test/data/questions.dart';
import 'package:quiz_test/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.selectedAnswers});

  final List<String> selectedAnswers;

  List<Map<String, Object>> getSummaryData() {
    List<Map<String, Object>> summary = [];

    for (var i = 0; i < selectedAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].question,
        'correct_answer': questions[i].answers[0],
        'selected_answer': selectedAnswers[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You answered 3 out of 6 questions correctly!'),
            SizedBox(height: 30),
            QuestionsSummary(summaryData: getSummaryData()),
            SizedBox(height: 30),
            TextButton(onPressed: () {}, child: Text('Restart Quiz!')),
          ],
        ),
      ),
    );
  }
}
