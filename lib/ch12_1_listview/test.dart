import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class User {
  String name;
  String phone;
  String email;
  User(this.name, this.phone, this.email);
}

class MyApp extends StatelessWidget {
  List<User> users = [
    User('홍길동', '010001', 'a@a.com'),User('김길동', '010002', 'b@a.com'),
    User('이길동', '010003', 'c@a.com'),User('박길동', '010004', 'd@a.com'),
    User('홍길동', '010001', 'a@a.com'),User('김길동', '010002', 'b@a.com'),
    User('이길동', '010003', 'c@a.com'),User('박길동', '010004', 'd@a.com'),
  ];

  // const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Test'),),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('images/big.jpeg'),
                ),
                title: Text(users[index].name),
                subtitle: Text(users[index].phone),
                trailing: Icon(Icons.more_vert),
                onTap: () {
                  print(users[index].name);
                },
              );
            },
            separatorBuilder: (context, index) {
              return Divider(height: 2, color: Colors.black,);
            },
            itemCount: users.length
        ),
      ),
    );
  }
}