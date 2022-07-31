import 'package:flutter/material.dart';
import 'package:youtube_tut/utils/routes.dart';
import 'home_page.dart';

class LoginPage extends StatelessWidget {
  //state=Κατασταση Stateless οχι δυναμικο, Statefullδυναμικο
  @override
  Widget build(BuildContext context) {
    //Προσοχη με το row και colomns
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        //scrollbar για μεινει γινει eroor
        child: Column(
          //εχουμε Column και row
          children: [
            Image.asset("assets/images/20943504.jpg", fit: BoxFit.cover),
            //SizedBox(height: 20),//κενο ενδιαμεσα φωτογραφιας και κειμενο (column)
            Text(
              "Wellcome",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurpleAccent),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: 16, horizontal: 32), //κενα μεταξυ στειλων
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter username",
                      labelText: "Username",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter password",
                      labelText: "password",
                    ),
                  ), //φορμα στοιχειων
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    //δημιουργεια κουμπιου
                    child: Text("Login"),
                    style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                    onPressed: () {
                      Navigator.pushNamed(
                          context, MyRoutes.homeRoute); //να αλλαξει οθονη
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
