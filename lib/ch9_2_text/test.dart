import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  String longTxt =
      '동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리나라 만세, 무궁화 삼천리 화려강산 대한사람 대한으로 길이 보전하세';

  // const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Test'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Hello World',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.red,
                fontSize: 20.0,
                height: 2,
                backgroundColor: Colors.yellow,
                decoration: TextDecoration.underline,
                decorationColor: Colors.red,
                decorationStyle: TextDecorationStyle.wavy,
              ),
            ),
            Text(
              longTxt,
              style: TextStyle(
                fontSize: 20.0,
              ),
              maxLines: 2,
              overflow: TextOverflow.fade,
            ),
            RichText(
              text: TextSpan(
                text: 'HE',
                style: TextStyle(fontSize: 20.0, color: Colors.black),
                children: [
                  TextSpan(
                    text: 'L',
                    style: TextStyle(fontStyle: FontStyle.italic),
                    children: [
                      TextSpan(text: 'LO'),
                      TextSpan(
                        text: 'WO',
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  TextSpan(
                    text: 'RLD',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
