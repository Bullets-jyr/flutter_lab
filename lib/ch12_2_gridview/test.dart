import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<String> citys = ['서울시','인천시','부산시','대구시','대전시','광주시','울산시','세종시'];

  // const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Test'),),
        body: GridView.builder(
          scrollDirection: Axis.horizontal,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (context, index){
            return Card(
              child: Column(
                children: [
                  Text(citys[index]),
                  Image.asset('images/big.jpeg'),
                ],
              ),
            );
          },
          itemCount: citys.length,
        ),
      ),
    );
  }
}