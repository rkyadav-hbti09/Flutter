import 'package:flutter/material.dart';
import './getanswer.dart';

class Questions extends StatelessWidget {
  Questions(
      {required this.question, required this.clickFun, required this.index}) {
    print("==== CTOR Questions ========= ");
    print("==== question=$question ");
    print("==== index=$index ");
    print("==== END CTOR Questions ========= ");
  }
  final String question;
  final int index;
  VoidCallback clickFun;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Text(
            question,
            style: const TextStyle(
              fontSize: 28,
              color: Colors.blueAccent,
              fontWeight: FontWeight.bold,
            ),
          ),
          GetAnswer(questionNumber: index, fn: clickFun),
        ],
      ),
    );
  }
}
