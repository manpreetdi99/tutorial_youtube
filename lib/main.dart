import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

//στο const και στο final δεν μπορουν να αλλαξουν οι τιμες αλλα στο final μπορουν να προσθεθουν τιμες σχεση με την const που δεν
//γινεται
class MyApp extends StatelessWidget {
  //extends εξαρταται απο την κλαση
  @override //εχει προσβαση στην γονικη κλαση

  Widget build(BuildContext context) {
    return MaterialApp(
      //δες την δομη
      home: HomePage(), //καλω την συναρτηση απο το home_page απο το αλλο φακελο
    );
  }
}
