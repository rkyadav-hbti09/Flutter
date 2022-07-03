import 'package:flutter/material.dart';
import 'answer_widget.dart';

class GetAnswer extends StatelessWidget {
  GetAnswer({required this.questionNumber, required this.fn}) {
    print("==== CTOR GetAnswer ========= ");
    print("==== questionNumber=$questionNumber ");
    print("==== END CTOR GetAnswer ========= ");
  }
  int questionNumber;
  VoidCallback fn;
  //String finalName;
  final _questionAnswer = {
    0: ["Poni ki nak", "Poni ki aake", "Poni kai do kan", "Poni ka muh"],
    1: [
      "When Poni is Angry",
      "When Poni trying to kill you",
      "When Poni is hungary?",
      "When Poni start jumping"
    ],
    2: ["Poni", "Parrot", "Bakri ka baccha", "kutte ka bacha"]
  };

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      //AnswersWidget(answerOptions: _questionAnswer[1].elementAt(0), fn: fn),
      AnswersWidget(
          answerOptions: _questionAnswer[questionNumber]!.elementAt(0), fn: fn),
      AnswersWidget(
          answerOptions: _questionAnswer[questionNumber]!.elementAt(1), fn: fn),
      AnswersWidget(
          answerOptions: _questionAnswer[questionNumber]!.elementAt(2), fn: fn),
      AnswersWidget(
          answerOptions: _questionAnswer[questionNumber]!.elementAt(3), fn: fn),
    ]);
  }
}
