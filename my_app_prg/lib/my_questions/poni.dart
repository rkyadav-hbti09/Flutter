import 'package:flutter/material.dart';
import './result.dart';
import './question.dart';
import 'answer_widget.dart';

class Poni extends StatefulWidget {
  final String title;
  const Poni({Key? key, required this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PoniState(title);
  }
}

class PoniState extends State<Poni> {
  final String title;
  PoniState(this.title);

  int _questionCount = 0;
  int poni = 0;
  void _getAnswer() {
    setState(() {
      ++_questionCount;
    });
    print("Cliked getAnwer : $_questionCount");
  }

  var _questions = [
    'What do you like Most about poni ?',
    'When do you afraid from Poni ?',
    'Whos is most dangerous ?'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: _questionCount < _questions.length
          ? Questions(
              question: _questions[_questionCount],
              clickFun: _getAnswer,
              index: _questionCount)
          : Result(),
    );
  }
}
