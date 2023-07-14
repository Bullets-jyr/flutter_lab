import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Provider Test'),),
        body: Provider<int>(
          create: (context){
            int sum = 0;
            for(int i=1; i<=10; i++){
              sum += i;
            }
            return sum;
          },
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
    final data = Provider.of<int>(context);
    return Container(
      color: Colors.orange,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('I am SubWidget', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
            Text('Provider Data : $data', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
          ],
        ),
      ),
    );
  }
}
