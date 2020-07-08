import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var questions = [
      'あなたの好きな色はなんですか？'
      'あなたの好きな動物はなんですか？']
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: Column(children: [
          Text('The question'),
          RaisedButton(
            child: Text('answer1'),
            onPressed: null
          ),
          RaisedButton(
            child: Text('answer2'),
            onPressed: null
          ),
          RaisedButton(
            child: Text('answer3'),
            onPressed: null
          ),  
        ],),
      ),
    );
  }
}
