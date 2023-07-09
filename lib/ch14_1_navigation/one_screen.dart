import 'package:flutter/material.dart';
import 'user.dart';

class OneScreen extends StatelessWidget {
  const OneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('OneScreen'),
        ),
        body: Container(
          color: Colors.red,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('OneScreen', style: TextStyle(color: Colors.white, fontSize: 30),),
                ElevatedButton(
                  onPressed: () async {
                    final result = await Navigator.pushNamed(
                        context,
                        "/two",
                        arguments: {
                          "arg1": 10,
                          "arg2": "hello",
                          "arg3": User('kkang','seoul'),
                        }
                    );
                    print('result : ${(result as User).name}');
                  },
                  child: Text('Go Two'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
