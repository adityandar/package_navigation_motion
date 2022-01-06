import 'package:flutter/material.dart';
import 'package:package_navigation/main_page.dart';
import 'package:package_navigation/second_page.dart';
import 'package:package_navigation/third_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        '/': (context) => MainPage(),
        '/second': (context) => SecondPage(),
        '/third': (context) => ThirdPage(),
      },
    );
  }
}
