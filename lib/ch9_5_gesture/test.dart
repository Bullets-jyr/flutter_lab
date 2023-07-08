import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  onPressed() {
    print('icon button click...');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Test'),
        ),
        body: Column(
          children: [
            GestureDetector(
              child: Image.asset('images/icon/user.png'),
              onTap: () {
                print('image click....');
              },
              onVerticalDragStart: (DragStartDetails details) {
                print(
                    'vertical drag start... global position : ${details.globalPosition.dx}, ${details.globalPosition.dy}');
                print(
                    'vertical drag start... local position : ${details.localPosition.dx}, ${details.localPosition.dy}');
              },
            ),
            ElevatedButton(
              onPressed: () {
                print('ElevatedButton click...');
              },
              child: Text('Click Me'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
