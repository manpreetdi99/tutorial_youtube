import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override //μια φορα δεσμευση μνημης
  num days = 30;
  String name = "manpreet";
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Center(
          child: Container(
            child: Text("welcome to $days days flutter $name"),
          ),
        ),
      ),
    );
  }
}
