import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'screens/Home.dart';

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
      home: Home(),
    );
  }
}
