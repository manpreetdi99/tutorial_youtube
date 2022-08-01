import 'package:flutter/material.dart';
import 'package:youtube_tut/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  //State<LoginPage> createState() => _LoginPageState();
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //state=Κατασταση Stateless οχι δυναμικο, Statefullδυναμικο
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      //για την συμπληρωση στοιχειων αμα ειναι λαθος
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  } //μετακινηση στο HomePage

  @override
  Widget build(BuildContext context) {
    //Προσοχη με το row και colomns
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        //scrollbar για μεινει γινει error
        child: Form(
          key: _formKey,
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
                      //formField εχουμε πολλαπλες επιλογες
                      decoration: InputDecoration(
                        hintText: "Enter username",
                        labelText: "Username",
                      ),
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "Username cannot be empty";
                        }

                        return null;
                      },
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
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "Password cannot be empty";
                        } else if (value.length < 6) {
                          return "Password length should be atleast 6";
                        }
                        return null;
                      },
                    ), //φορμα στοιχειων
                    SizedBox(
                      height: 30,
                    ),
                    Material(
                      color: Colors.deepPurple,
                      borderRadius:
                          BorderRadius.circular(changeButton ? 50 : 8),
                      child: InkWell(
                        onTap: () => moveToHome(context),
                        //alignment: Alignment.center, //ευθιγραμμιση κεντρου
                        //inkwell και AnimatedContainer το ιδιο πραγμα σχεδον
                        //σστο ink εχουμε την δυνατοτητα για αλλλη χρωματος κατα την διαρκει του κλικ
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
                                      color: Colors
                                          .white, //τα γραμματα ειναι λευκα
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                          // decoration: BoxDecoration(
                          //   color: Colors.deepPurple,
                          //   borderRadius: BorderRadius.circular(
                          //       changeButton ? 50 : 8), //μικρινσει
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
      ),
    );
  }
}
