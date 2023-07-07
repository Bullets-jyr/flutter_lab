int plus(int no) {
  return no + 10;
}

int multiply(int no) {
  return no * 10;
}

// Function testFun(Function argFun) {
//   print('argFun : ${argFun(10)}');
//   return multiply;
// }

Function testFun(int argFun(int a)) {
  print('argFun : ${argFun(10)}');
  return multiply;
}

void main() {
  var result = testFun(plus);
  print('result : ${result(20)}');
}