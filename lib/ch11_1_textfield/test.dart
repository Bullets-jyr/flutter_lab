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
        appBar: AppBar(
          title: Text('Test'),
        ),
        body: TestScreen(),
      ),
    );
  }
}

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  final controller = TextEditingController();
  int textCounter = 0;

  _printValue() {
    print("_printValue(): ${controller.text}");
    setState(() {
      textCounter = controller.text.length;
    });
  }

  @override
  void initState() {
    super.initState();
    controller.addListener(_printValue);
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Text('TextField Test'),
          TextField(
            style: TextStyle(fontSize: 15.0),
            controller: controller,
            decoration: InputDecoration(
              labelText: 'Data',
              prefixIcon: Icon(Icons.input),
              border: OutlineInputBorder(),
              hintText: 'Hint Text',
              helperText: '데이터를 입력하세요..',
              counterText: '$textCounter characters',
            ),
            textInputAction: TextInputAction.search,
            keyboardType: TextInputType.emailAddress,
            minLines: 5,
            maxLines: 5,
          ),
        ]
    );
  }
}
