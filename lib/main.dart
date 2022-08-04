import 'package:flutter/material.dart';
import 'package:youtube_tut/pages/login_page.dart';
import 'package:youtube_tut/utils/routes.dart';
import 'pages/home_page.dart';
import 'widgets/drawer.dart';
import 'widgets/themes.dart';

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
      theme: MyTheme.lightTheme(
          context), //βαλαμε theme σε εξωτερικο φακελο σε αλλη κλαση //ThemeData
      // primarySwatch:
      //     Colors.deepPurple, //PRIMARYSWATCH COLORS ABJUSTMENT ALL APP COLOR
      // fontFamily: GoogleFonts.lato()
      //     .fontFamily, //Αμα αλλαξει σε ενα σημειο το style αλλαξε παντου
      // primaryTextTheme: GoogleFonts
      //     .latoTextTheme(),
      debugShowCheckedModeBanner: false, //αποκρυψη του debug
      darkTheme: ThemeData(
        brightness:
            Brightness.dark, //δεν μπορω να βαλουμε primayrySwatch στο dark Mode
      ),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(), //default route
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) =>
            LoginPage(), //καταλληλο για το navigator
      },
    );
  }
}
