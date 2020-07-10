import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'あなたの好きな色はなんですか？',
      'answers': [
        {'text': '黒', 'score': 1},
        {'text': '赤', 'score': 3},
        {'text': '緑', 'score': 10},
        {'text': '白', 'score': 8}
      ],
    },
    {
      'questionText': 'あなたは何型ですか？',
      'answers': [
        {'text': 'A', 'score': 5},
        {'text': 'B', 'score': 3},
        {'text': 'AB', 'score': 9},
        {'text': 'O', 'score': 6}
      ],
    },
    {
      'questionText': 'あなたの性格は？',
      'answers': [
        {'text': '穏やか', 'score': 10},
        {'text': 'メンヘラ', 'score': 3},
        {'text': 'のんびり', 'score': 5},
        {'text': '怒りっぽい', 'score': 1}
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;
  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
    if (_questionIndex < _questions.length) {
      print('we have more questions');
    } else {
      print('No more questions');
    }

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('性格診断'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore),
      ),
    );
  }
}
