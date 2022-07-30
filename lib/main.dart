import 'package:flutter/material.dart';
import 'package:youtube_tut/pages/login_page.dart';
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
      //home: HomePage(), //καλω την συναρτηση απο το home_page απο το αλλο φακελο
      themeMode: ThemeMode.light, //αλλαζουμε dark και Light
      theme: ThemeData(
          primarySwatch: Colors
              .deepPurple), //PRIMARYSWATCH COLORS ABJUSTMENT ALL APP COLOR
      darkTheme: ThemeData(
        brightness:
            Brightness.dark, //δεν μπορω να βαλουμε primayrySwatch στο dark Mode
      ),
      routes: {
        "/": (context) => LoginPage(), //default route
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage(),
        },
    );
  }
}
