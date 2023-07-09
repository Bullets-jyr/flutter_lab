import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    bool _isDeepLink = true;

    return MaterialApp(
      title: 'Navigator Test',
      home: Navigator(
        pages: [
          MaterialPage(child: OneScreen()),
          if(_isDeepLink) MaterialPage(child: TwoScreen()),
        ],
        onPopPage: (route, result) => route.didPop(result),
      ),
    );
  }
}

class OneScreen extends StatelessWidget {
  const OneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('OneScreen'),),
      body: Container(
        color: Colors.red,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('OneScreen', style: TextStyle(color: Colors.white, fontSize: 30),)
            ],
          ),
        ),
      ),
    );
  }
}

class TwoScreen extends StatelessWidget {
  const TwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TwoScreen'),),
      body: Container(
        color: Colors.red,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('TwoScreen', style: TextStyle(color: Colors.white, fontSize: 30),),
              ElevatedButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text('Pop'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
