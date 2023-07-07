class MyClass {
  String data1 = 'hello';
  static String data2 = 'world';

  myFun1() {}
  static myFun2() {}
}

void main() {
  // MyClass.data1 = 'world' // error
  MyClass.data2 = 'hello';
  // MyClass.myFun1(); // error
  MyClass.myFun2();

  MyClass obj = MyClass();
  obj.data1 = 'world';
  obj.myFun1();

  // obj.data2 = 'hello'; // error
}