import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit(): super(0);
  void increment() => emit(state +1);
  void decrement() => emit(state -1);
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
        appBar: AppBar(title: Text('Cubit Test'),),
        body: BlocProvider(
          create: (_) => CounterCubit(),
          child: MyWidget(),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<CounterCubit>(context);
    return BlocBuilder<CounterCubit, int>(
      builder: (context, count){
        return Container(
          color: Colors.deepOrange,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Cubit : $count',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ElevatedButton(
                  onPressed: (){
                    cubit.increment();
                  },
                  child: Text('increment'),
                ),
                ElevatedButton(
                  onPressed: (){
                    cubit.decrement();
                  },
                  child: Text('decrement'),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
