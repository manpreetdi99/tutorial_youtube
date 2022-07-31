import 'package:flutter/material.dart';
import 'package:youtube_tut/utils/routes.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //state=Κατασταση Stateless οχι δυναμικο, Statefullδυναμικο
  String name = "";
  bool changeButton = false;

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
              "Wellcome $name",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple),
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
                    onChanged: (value) {
                      //για να εμφανιζει το ονομα μαζι με το wellcome
                      name = value;
                      setState(() {});
                    },
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
                  InkWell(
                    onTap: () async {
                      setState(() {
                        changeButton = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    //alignment: Alignment.center, //ευθιγραμμιση κεντρου
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: changeButton ? 50 : 150,
                      height: 50,
                      alignment: Alignment.center,
                      child: changeButton
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 8),
                      ), //συμηλευση γωνιων
                    ),
                  ),
                  // ElevatedButton(
                  //   //δημιουργεια κουμπιου
                  //   child: Text("Login"),
                  //   style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                  //   onPressed: () {
                  //     Navigator.pushNamed(
                  //         context, MyRoutes.homeRoute); //να αλλαξει οθονη
                  //   },
                  // )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
