import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
  DateTime dateValue = DateTime.now();
  TimeOfDay timeValue = TimeOfDay.now();

  _dialog() {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Dialog Title'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    Text('수신동의')
                  ],
                )
              ],
            ),
            actions: [
              TextButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              )
            ],
          );
        }
    );
  }

  _bottomSheet() {
    showBottomSheet(
        context: context,
        backgroundColor: Colors.yellow,
        builder: (context){
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Icon(Icons.add),
                title: Text('ADD'),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: Icon(Icons.remove),
                title: Text('REMOVE'),
                onTap: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        }
    );
  }

  _modalBottomSheet() {
    showModalBottomSheet(
        context: context,
        backgroundColor: Colors.yellow,
        builder: (context){
          return SafeArea(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    leading: Icon(Icons.add),
                    title: Text('ADD'),
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.remove),
                    title: Text('REMOVE'),
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  )
                ],
              )
          );
        }
    );
  }

  Future datePicker() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2016),
      lastDate: DateTime(2030),
    );

    if (picked != null) setState(() {
      dateValue = picked;
    });
  }

  Future timePicker() async {
    TimeOfDay? selectedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (selectedTime != null) setState(() {
      timeValue = selectedTime;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: _dialog, child: Text('dialog')),
          ElevatedButton(onPressed: _bottomSheet, child: Text('bottomSheet')),
          ElevatedButton(onPressed: _modalBottomSheet, child: Text('modal bottomsheet')),
          ElevatedButton(onPressed: datePicker, child: Text('datepicker')),
          Text('date : ${DateFormat('yyyy-MM-dd').format(dateValue)}'),
          ElevatedButton(onPressed: timePicker, child: Text('timepicker')),
          Text('time : ${timeValue.hour}:${timeValue.minute}'),
        ],
      ),
    );
  }
}
