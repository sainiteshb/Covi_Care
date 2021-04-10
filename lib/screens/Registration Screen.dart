import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:lottie/lottie.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Home.dart';

class Register extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Register> {
  final _auth = FirebaseAuth.instance;
  String email;
  String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 300,
                width: 300,
                child: Lottie.asset('assets/covi.json'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "C",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  FaIcon(
                    FontAwesomeIcons.virus,
                    color: Colors.green.shade600,
                    size: 35,
                  ),
                  Text(
                    "vi",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                    height: 40,
                  ),
                  Text(
                    "Care",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                    height: 40,
                  ),
                ],
              ),
              SizedBox(
                width: 30.0,
                height: 26,
              ),
              Container(
                width: 310,
                height: 100,
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value) {
                    email = value;
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    hintText: 'Enter your email',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 0.0,
                width: 5.0,
              ),
              Container(
                width: 310,
                height: 100,
                child: TextField(
                  keyboardType: TextInputType.visiblePassword,
                  onChanged: (value) {
                    password = value;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    hintText: 'Password',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 0.0,
                width: 4.0,
              ),
              RaisedButton(
                highlightElevation: 50,
                color: Colors.blue.shade900,
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(28.0)),
                splashColor: Colors.purple.shade900,
                onPressed: () async {
                  try {
                    final user = await _auth.createUserWithEmailAndPassword(
                        email: email, password: password);
                    if (user != null) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return Home();
                        }),
                      );
                    }
                  } catch (e) {
                    return Center(
                      child: Container(
                        child: Text(
                          'Hello',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10.0,
                          ),
                        ),
                      ),
                    );
                  }
                },
                child: Text(
                  "Register",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
