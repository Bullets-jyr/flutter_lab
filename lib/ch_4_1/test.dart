void main() {
  int no = 10;
  String name = "kkang";
  String myFun() {
    return 'kim';
  }
  print('no: $no, name: $name, 10 + 20: ${10 + 20}, myFun(): ${myFun()}');

  int n1 = 10;
  double d1 = 10.0;
  // double d2 = n1; // error
  // int n2 = d1; // error

  double d2 = n1.toDouble();
  int n2 = d1.toInt();
}