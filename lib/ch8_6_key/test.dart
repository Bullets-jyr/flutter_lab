import 'package:flutter/material.dart';
import 'package:flutter_lab/ch8_3_statelesswidget/test.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyListWidget(),
    );
  }
}

class MyListWidget extends StatefulWidget {
  const MyListWidget({super.key});

  @override
  State<MyListWidget> createState() => _MyListWidgetState();
}

class _MyListWidgetState extends State<MyListWidget> {
  List<Widget> widgetlist = [
    MyColorItemWidget(Colors.red, key: UniqueKey(),),
    MyColorItemWidget(Colors.blue, key: UniqueKey(),),
  ];

  onChange() {
    setState(() {
      widgetlist.insert(1, widgetlist.removeAt(0));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Key Test'),
      ),
      body: Column(
        children: [
          Row(
            children: widgetlist,
          ),
          ElevatedButton(
            onPressed: onChange,
            child: Text('toggle'),
          ),
        ],
      ),
    );
  }
}

class MyColorItemWidget extends StatefulWidget {
  Color color;

  MyColorItemWidget(this.color, {super.key});

  @override
  State<MyColorItemWidget> createState() => _MyColorItemWidgetState(color);
}

class _MyColorItemWidgetState extends State<MyColorItemWidget> {
  Color color;

  _MyColorItemWidgetState(this.color);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: color,
        width: 150.0,
        height: 150.0,
      ),
    );
  }
}
