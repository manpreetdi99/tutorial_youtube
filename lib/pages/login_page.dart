import 'package:flutter/material.dart';

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
          Text("Wellcome",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.deepblue,
              )),
        ],
      ),
    );
  }
}
