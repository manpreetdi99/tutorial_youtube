import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final num days = 30; //περνει και int και float τιμες
  final String name = "manpreet";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //to Scaffold ειναι πιο οργανομενο
      appBar: AppBar(
        title: Text("hello"), // Πανω γραμμη
      ),
      body: Center(
        child: Container(
          child: Text("welcome to $days days flutter $name"),
        ),
      ),
      drawer: Drawer(), //πλαινο μενου
    );
  }
}
