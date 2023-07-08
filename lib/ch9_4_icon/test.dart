import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});

  onPressed() {
    print('icon button click....');
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
            Icon(
              Icons.alarm,
              size: 100,
              color: Colors.red,
            ),
            FaIcon(
              FontAwesomeIcons.bell,
              size: 100,
            ),
            IconButton(
              onPressed: onPressed,
              icon: Icon(
                Icons.alarm,
                size: 100,
              ),
            )
          ],
        ),
      ),
    );
  }
}
