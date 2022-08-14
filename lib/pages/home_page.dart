import 'package:flutter/material.dart';
import 'package:youtube_tut/widgets/drawer.dart';
import '../models/catalog.dart';
import '../widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  final num days = 30; //περνει και int και float τιμες
  final String name = "manpreet";
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
      //to Scaffold ειναι πιο οργανομενο
      appBar: AppBar(
        centerTitle: true,
        foregroundColor: Colors.black,
        title: Text("Catalog App"), // Πανω γραμμη
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index],
            );
          },
        ),
      ),
      // body: Center(
      //   child: Container(
      //     child: Text("welcome to $days days flutter $name"),
      //  ),
      //),
      drawer: MyDrawer(), //πλαινο μενου
    );
  }
}
