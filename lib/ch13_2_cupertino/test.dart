import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget platformUI() {
    if (Platform.isIOS) {
      return CupertinoApp(
        debugShowCheckedModeBanner: false,
        theme: CupertinoThemeData(brightness: Brightness.light),
        home: CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(middle: Text('Cupertino Title'),),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CupertinoButton(child: Text('click'), onPressed: (){}),
              Center(
                child: Text('HelloWorld'),
              )
            ],
          ),
        ),
      );
    } else if (Platform.isAndroid) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(title: Text('Material Title'),),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){}, child: Text('click')),
              Center(
                child: Text('HelloWorld'),
              )
            ],
          ),
        ),
      );
    } else {
      return Text(
        'unKnown Device',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return platformUI();
  }
}