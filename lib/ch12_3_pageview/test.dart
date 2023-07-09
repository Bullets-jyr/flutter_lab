import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  PageController controller = PageController(initialPage: 1, viewportFraction: 0.8);

  // const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Test'),
        ),
        body: PageView(
          controller: controller,
          children: [
            Container(
              margin: EdgeInsets.all(20),
              color: Colors.red,
              child: Center(
                child: Text('OnePage', style: TextStyle(color: Colors.white, fontSize: 30),),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              color: Colors.green,
              child: Center(
                child: Text('TwoPage', style: TextStyle(color: Colors.white, fontSize: 30),),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              color: Colors.blue,
              child: Center(
                child: Text('ThreePage', style: TextStyle(color: Colors.white, fontSize: 30),),
              ),
            )
          ],
        ),
      ),
    );
  }
}