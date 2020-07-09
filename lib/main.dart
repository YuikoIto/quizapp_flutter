import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var questionIndex = 0;

  void answerQuestion() {
    questionIndex += 1;
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = ['あなたの好きな色はなんですか？', 'あなたの好きな動物はなんですか？'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: Column(
          children: [
            Text(
              questions[questionIndex],
            ),
            RaisedButton(
              child: Text('answer1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('answer2'),
              onPressed: () => print('answer2'),
            ),
            RaisedButton(
              child: Text('answer3'),
              onPressed: () {
                print('answer3');
              },
            ),
          ],
        ),
      ),
    );
  }
}
