import 'package:flutter/material.dart';
import 'package:get/get.dart';

class User {
  String name ='';
  int age = 0;
}

class CounterController extends GetxController {
  var count = 0.obs;
  var isChecked = false.obs;
  var title = ''.obs;
  var user = User().obs;

  @override
  void onInit() {
    super.onInit();
    ever(
      count,
          (value) => print('ever:$value'),
    );
    once(
      count,
          (value) => print('once: $value'),
    );
    debounce(
      count,
          (value) => print('debounce: $value'),
      time: Duration(seconds: 1),
    );
    interval(
      count,
          (value)=> print('interval: $value'),
      time:Duration(seconds: 1),
    );
  }
  @override
  void onClose() {
    super.onClose();
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CounterController());
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('GetX Rx Test'),),
        body: MyWidget(),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX<CounterController>(
      builder: (controller) => Container(
        color: Colors.deepOrange,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'GetX : ${controller.count}, ${controller.isChecked.value}, ${controller.title.value}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'GetX : ${controller.user.value.name}, ${controller.user.value.age}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElevatedButton(
                  onPressed: (){
                    controller.count.value++;
                    if(controller.title.value == 'hello')
                      controller.title.value = 'world';
                    else
                      controller.title.value = 'hello';
                    controller.isChecked.value = !controller.isChecked.value;

                    if(controller.user.value.name == 'kkang')
                      controller.user.value.name = 'kim';
                    else
                      controller.user.value.name = 'kkang';
                  },
                  child: Text('change')
              ),
            ],
          ),
        ),
      ),
    );
  }
}
