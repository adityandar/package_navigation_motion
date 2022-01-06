import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text("Second Page"),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context, 'Motion Lab');
            },
            child: Text("Back"),
          ),
        ],
      ),
    );
  }
}
