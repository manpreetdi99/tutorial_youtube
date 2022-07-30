import 'package:flutter/material.dart';
import 'home_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Προσοχη με το row και colomns
    return Material(
      color: Colors.white,
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
                  height: 20,
                ),
                ElevatedButton(
                  //δημιουργεια κουμπιου
                  child: Text("Login"),
                  style: TextButton.styleFrom(),
                  onPressed: () {},
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
