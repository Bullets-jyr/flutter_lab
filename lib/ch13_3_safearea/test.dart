import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Widget> getWidgets(){
    List<Widget> widgets = [];
    for (var i = 0; i < 100; i++) {
      widgets.add(ListTile(
        title: Text('Hello World Item $i'),
      ));
    }
    return widgets;
  }

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: getWidgets(),
              ),
            ),
          )
      ),
    );
  }
}