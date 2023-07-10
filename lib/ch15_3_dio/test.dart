import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';
import 'package:dio/dio.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String result = '';

  dioTest() async {
    try{
      var dio = Dio(
          BaseOptions(
              baseUrl: "https://reqres.in/api/",
              connectTimeout: 5000,
              receiveTimeout: 5000,
              headers: {
                HttpHeaders.contentTypeHeader: 'application/json',
                HttpHeaders.acceptHeader: 'application/json',
              }
          )
      );
      List<Response<dynamic>> respone = await Future.wait([
        dio.get('https://reqres.in/api/users?page=1'),
        dio.get('https://reqres.in/api/users?page=2'),
      ]);
      respone.forEach((element) {
        if(element.statusCode == 200){
          setState(() {
            result = element.data.toString();
          });
        }
      });
    } catch(e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Test'),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$result'),
              ElevatedButton(
                onPressed: dioTest,
                child: Text('Get Server Data'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}