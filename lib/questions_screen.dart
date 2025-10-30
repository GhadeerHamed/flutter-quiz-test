import 'package:flutter/material.dart';
import 'package:quiz_test/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Question"),
          const SizedBox(height: 30),

          AnswerButton(answerText: "111111", onTap: () {}),

          AnswerButton(answerText: "22222222", onTap: () {}),
        ],
      ),
    );
  }
}
