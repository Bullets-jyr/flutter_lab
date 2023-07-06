// const String data1; // error
const String data1 = 'hello';
final int no1 = 10;

class User {
  // static const String data2; // error
  static const String data2 = 'hello';
  final int no2;
  User(this.no2);

  void some() {
    // const String data3; // error
    const String data3 = 'hello';
    final int no3;
    no3 = 10;
    // data1 = 'world'; // error
    int result = no3 + 10;
  }
}