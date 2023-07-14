import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyDataModel with ChangeNotifier {
  int data1 = 0;
  int data2 = 10;
  void changeData1() {
    data1++;
    notifyListeners();
  }
  void changeData2() {
    data2++;
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
        appBar: AppBar(title: Text('Selector Test'),),
        body: MultiProvider(
          providers: [
            ChangeNotifierProvider<MyDataModel>.value(value: MyDataModel()),
          ],
          child: HomeWidget(),
        ),
      ),
    );
  }
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<MyDataModel>(
                builder: (context, model, child){
                  return Container(
                    color: Colors.green,
                    padding: EdgeInsets.all(20),
                    child: Center(
                      child: Text(
                        'consumer, data1: ${model.data1}, data2: ${model.data2}',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  );
                }
            ),
            Selector<MyDataModel, int>(
              builder: (context, data, child){
                return Container(
                  color: Colors.cyan,
                  padding: EdgeInsets.all(20),
                  child: Center(
                    child: Text(
                      'selector, data: ${data}',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                );
              },
              selector: (context, model) => model.data2,
            ),
            Column(
              children: [
                ElevatedButton(
                    onPressed: (){
                      var model1 = Provider.of<MyDataModel>(context, listen: false);
                      model1.changeData1();
                    },
                    child: Text('model data1 change')
                ),
                ElevatedButton(
                    onPressed: (){
                      var model1 = Provider.of<MyDataModel>(context, listen: false);
                      model1.changeData2();
                    },
                    child: Text('model data2 change')
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
