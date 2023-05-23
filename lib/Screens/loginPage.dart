import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert' as convert;

import '../Widgets/bottomNavBar.dart';

// ignore: camel_case_types
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

// ignore: camel_case_types
class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/img/bg/background.jpg',
                ),
                fit: BoxFit.fill)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Image(
                image: AssetImage('assets/logo.png'),
                width: 500,
                height: 200,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    height: 310,
                    width: 350,
                    child: Form(
                        child: Padding(
                            padding:
                                const EdgeInsets.only(left: 20.0, right: 20.0),
                            child: Column(children: [
                              // Image(image: AssetImage('assets/logo.png')),
                              Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    TextFormField(
                                      decoration: InputDecoration(
                                        focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.indigo.shade800)),
                                        icon: Icon(Icons.email),
                                        hintText: "Email",
                                        border: UnderlineInputBorder(),
                                      ),
                                    ),
                                    TextFormField(
                                      obscureText: true,
                                      decoration: InputDecoration(
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.indigo.shade800),
                                        ),
                                        icon: Icon(Icons.https_rounded),
                                        hintText: "Password",
                                        border: UnderlineInputBorder(),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 0.8),
                                      child: Row(
                                        children: [
                                          MaterialButton(
                                            child: Text(
                                              "Forgot Password?",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            onPressed: () {},
                                          )
                                        ],
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) => Anasayfa()),
                                        );
                                      },
                                      child: Container(
                                        width: 350,
                                        height: 30,
                                        color: Colors.blueAccent,
                                        child: Center(
                                          child: Text(
                                            "LOG IN",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 17),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Text("OR"),
                                    TextButton(
                                      onPressed: () {},
                                      child: Container(
                                        width: 250,
                                        height: 30,
                                        color: Colors.grey.shade300,
                                        child: Center(
                                          child: Text(
                                            "Sign in with Google",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15),
                                          ),
                                        ),
                                      ),
                                    ),
                                    TextButton(
                                        onPressed: () {},
                                        child: Container(
                                            width: 250,
                                            height: 30,
                                            color: Colors.grey.shade300,
                                            child: Center(
                                                child: Text(
                                              "Sign in with Apple",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 15),
                                            ))))
                                  ])
                            ]))),
                  ),
                ),
                MaterialButton(
                  child: Text(
                    "Don't have an acoount? Sign Up",
                    style: TextStyle(fontSize: 12),
                  ),
                  onPressed: () {},
                ),
                MaterialButton(
                  child: Text(
                    "Enter Demo Verification Code",
                    style: TextStyle(fontSize: 12),
                  ),
                  onPressed: () {},
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
