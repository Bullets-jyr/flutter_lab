class MyClass {
  final int data1;
  const MyClass(this.data1);
}

void main() {
  var obj1 = const MyClass(10);
  var obj2 = const MyClass(10);
  print('obj1 == obj2 : ${obj1 == obj2}');
}