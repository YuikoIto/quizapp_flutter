import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  Result(this.resultScore);
  String get resultPhrase {
    var resultText;
    if (resultScore <= 8) {
      resultText = '''外ヅラがよく内ヅラがわるいね
      
      内弁慶がばれないように''';
    } else if (resultScore <= 10) {
      resultText = '''重箱の隅をつつくような批判をするね
      
      もう少しゆとりを持ってね''';
    } else if (resultScore <= 12) {
      resultText = '''失恋をいつまでもクヨクヨ悩むね
      
      男は星の数だけいるよ''';
    } else if (resultScore <= 14) {
      resultText = '''サービス精神旺盛だね
      
      損しないように気をつけてね''';
    } else if (resultScore <= 16) {
      resultText = '''ハメをはずさない優等生タイプだね
      
      たまにはゆっくり休んで''';
    } else {
      resultText = '''人の気持ちを敏感に感じとることができるね
      
      そんなあなたが大好きだよ''';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      width: double.infinity,
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
