void some1(int data1, {required String? data2, bool data3 = false}) {

}

void main() {
  some1(10, data2: 'hello', data3: true);
  some1(10, data3: true, data2: 'hello');
  // some1(10, data3: true); // error
}