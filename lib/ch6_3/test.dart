class MyClass {
  late int data1;
  late int data2;
  MyClass(this.data1, this.data2) {}
  MyClass.first(int arg1) : this(arg1, 0);
  MyClass.second() : this.first(0);
}

void main() {
  MyClass obj1 = MyClass(10, 20);
  MyClass obj2 = MyClass.first(10);
  MyClass obj3 = MyClass.second();
}