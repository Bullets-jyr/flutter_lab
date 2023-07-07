class User {
  late String name;
  late int age;
  // User(String name, int age) {
  //   this.name = name;
  //   this.age = age;
  // }
  // User(this.name, this.age);
  // User(String arg1, int arg2) : this.name = arg1, this.age = arg2 {}
  User(List list) : this.name = list[0], this.age = list[1] {}
}