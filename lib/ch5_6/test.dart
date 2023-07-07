class User {
  String? name;
  int? age;

  some() {}
}

void main() {
  Object obj = User();
  // obj.some(); // error
  if (obj is User) {
    // smart casting..
    obj.some();
  }
  Object obj1 = User();
  (obj1 as User).some();

  User()
    ..name = 'world'
    ..age = 20
    ..some();
}
