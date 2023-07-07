void some(int arg1, [String? arg2, bool arg3 = false]) {

}

void main() {
  some(10);
  // some(10, arg2: 'hello'); // error
  some(10, 'hello', true);
  // some(10, true, 'hello'); // error
  some(10, 'hello');
}