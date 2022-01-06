import 'package:flutter/material.dart';

class DataPage extends StatelessWidget {
  final String title;
  DataPage({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(title),
      ),
    );
  }
}
