import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

import 'screens/Home.dart';
import 'screens/Registration Screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  @override
  _Myapp createState() => _Myapp();
}

class _Myapp extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _auth = FirebaseAuth.instance;
  String email;
  String password;
  bool showProgressloading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ModalProgressHUD(
        inAsyncCall: showProgressloading,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 300,
                  width: 300,
                  child: Lottie.asset('assets/covi.json'),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
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
                ]),
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
                      prefixIcon: Icon(
                        Icons.email,
                      ),
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
                      final user = await _auth.signInWithEmailAndPassword(
                          email: email, password: password);
                      setState(() {
                        showProgressloading =
                            true; // then login button is pressed the circular flutter indicator will get active
                      });
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
                    "Login",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 13,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "New to Covi Care?",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return Register();
                          }),
                        );
                      },
                      child: Text(
                        "Register",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 16,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
