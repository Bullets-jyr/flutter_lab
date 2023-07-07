mixin MyMixin {
  int mixinData = 10;
  void mixinFun() {

  }
}

class MySuper {
  int superData = 20;
  void superFun() {}
}

class MyClass extends MySuper with MyMixin {
  void test() {
    superData++;
    superFun();

    mixinData++;
    mixinFun();
  }
}