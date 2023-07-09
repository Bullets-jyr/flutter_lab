import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Test'),),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                height: 300,
                child: Row(
                  children: [
                    Container(
                      color: Colors.red,
                      width: 100,
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.amber,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.yellow,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.green,
                height: 300,
                child: Row(
                  children: [
                    Image.asset('images/lab_instagram_icon_1.jpg'),
                    Image.asset('images/lab_instagram_icon_2.jpg'),
                    Image.asset('images/lab_instagram_icon_3.jpg'),
                    Spacer(),
                    Image.asset('images/lab_instagram_icon_4.jpg'),
                  ],
                ),
              ),
              Container(
                color: Colors.blue,
                height: 300,
              ),
            ],
          ),
        ),
      ),
    );
  }
}