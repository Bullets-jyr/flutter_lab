import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Counter with ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('MultiProvider Test'),),
        body: MultiProvider(
          providers: [
            Provider<int>.value(value: 10),
            Provider<String>.value(value: "hello"),
            ChangeNotifierProvider<Counter>.value(value: Counter()),
          ],
          child: SubWidget(),
        ),
      ),
    );
  }
}

class SubWidget extends StatelessWidget {
  const SubWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var counter = Provider.of<Counter>(context);
    var intData = Provider.of<int>(context);
    var stringData = Provider.of<String>(context);
    return Container(
      color: Colors.orange,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Provider : ',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            Text(
              'int data : $intData',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            Text(
              'string data : $stringData',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            Text(
              'Counter data : ${counter.count}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            ElevatedButton(onPressed: () { counter.increment(); }, child: Text('increment'))
          ],
        ),
      ),
    );
  }
}
