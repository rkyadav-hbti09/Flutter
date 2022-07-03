import 'package:flutter/material.dart';

class AnswersWidget extends StatelessWidget {
  AnswersWidget({required this.answerOptions, required this.fn}) {
    print("==== CTOR AnswersWidget ========= ");
    print("==== answerOptions=$answerOptions ");
    print("==== END CTOR AnswersWidget ========= ");
  }
  final String answerOptions;
  VoidCallback fn;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(70, 1, 70, 1),
      child: ElevatedButton(
          onPressed: fn,
          child: Text(answerOptions),
          style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              side: BorderSide(color: Colors.black45),
              borderRadius: BorderRadius.circular(10),
            ),
          ))),
    );
  }
}
