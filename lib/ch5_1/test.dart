// var a: dynamic
// var을 생략할 수 있다.
void some1(var a) {

}

// dynamic some2() {} 와 동일합니다.
some2() {
  // return 10;
  // return true;
  return 'hello';
}

void main() {
  some1(10);
  some1(true);
  some1('hello');
}