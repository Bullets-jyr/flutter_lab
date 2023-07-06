import 'package:flutter_lab/ch3_1/test1.dart';

void main() {
  no1 = 100;
  // _no2 = 200; // error
  sayHello1();
  // _sayHello2(); // error
  User1 user1 = User1();
  user1.name = "kkang";
  // user1._address // error
}