import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyRepository {
  someFun(){
    print('..... someFun.....');
  }
}

abstract class CounterEvent {}
class IncrementEvent extends CounterEvent{}
class DecrementEvent extends CounterEvent{}

class BlocCounter extends Bloc<CounterEvent, int> {
  BlocCounter(): super(0){
    on<IncrementEvent>((event, emit){
      emit(state +1);
    });
    on<DecrementEvent>((event, emit) => emit(state -1));
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
        appBar: AppBar(title: Text('Consumer, Repository Test'),),
        body: RepositoryProvider(
          create: (context) => MyRepository(),
          child: BlocProvider<BlocCounter>(
            create: (context) => BlocCounter(),
            child: MyWidget(),
          ),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final BlocCounter counterBloc = BlocProvider.of<BlocCounter>(context);
    final MyRepository repository = RepositoryProvider.of<MyRepository>(context);
    return BlocConsumer<BlocCounter, int>(
      listenWhen: (previous, current){
        return true;
      },
      listener: (context, state){
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('$state'),
              backgroundColor: Colors.blue,
            )
        );
      },
      buildWhen: (previous, current){
        return true;
      },
      builder: (context, count){
        return Container(
          color: Colors.deepOrange,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Bloc:$count',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),
                ElevatedButton(
                  onPressed: (){
                    counterBloc.add(IncrementEvent());
                    repository.someFun();
                  },
                  child: Text('increment'),
                ),
                ElevatedButton(
                  onPressed: (){
                    counterBloc.add(DecrementEvent());
                    repository.someFun();
                  },
                  child: Text('decrement'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
