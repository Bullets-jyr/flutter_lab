import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lab/main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('StatefulTest'),
        ),
        body: MyWidget(),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  bool enabled = false;
  String stateText = 'disabled';

  void changeCheck() {
    setState(() {
      if (enabled) {
        stateText = 'disabled';
        enabled = false;
      } else {
        stateText = 'enabled';
        enabled = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: changeCheck,
            icon: (enabled
                ? Icon(
                    Icons.check_box,
                    size: 20,
                  )
                : Icon(
                    Icons.check_box_outline_blank,
                    size: 20,
                  )),
            color: Colors.red,
          ),
          Container(
            padding: EdgeInsets.only(left: 16.0),
            child: Text(
              '$stateText',
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
