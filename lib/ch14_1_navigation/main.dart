import 'package:flutter/material.dart';
import 'package:flutter_lab/ch14_1_navigation/four_screen.dart';
import 'package:flutter_lab/ch14_1_navigation/one_screen.dart';
import 'package:flutter_lab/ch14_1_navigation/three_screen.dart';
import 'package:flutter_lab/ch14_1_navigation/two_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/one',
      routes: {
        '/one': (context) => OneScreen(),
        '/two': (context) => TwoScreen(),
        // '/three': (context) => ThreeScreen(),
        // '/four': (context) => FourScreen(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/three') {
          return MaterialPageRoute(
            builder: (context) => ThreeScreen(),
            settings: settings,
          );
        } else if (settings.name == '/four') {
          return MaterialPageRoute(
            builder: (context) => FourScreen(),
            settings: settings,
          );
        }
      },
    );
  }
}