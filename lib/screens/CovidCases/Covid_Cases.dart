import 'package:flutter/material.dart';

import 'global.dart';

class CovidCase extends StatefulWidget {
  @override
  _CovidCaseState createState() => _CovidCaseState();
}

class _CovidCaseState extends State<CovidCase> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0.0,
          backgroundColor: Colors.black,
          title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "Covi",
              style: TextStyle(
                color: Colors.green,
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
                fontWeight: FontWeight.bold,
              ),
            ),
          ]),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(32),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                  bottomLeft: Radius.circular(50),
                )),
                child: AnimatedSwitcher(
                  duration: Duration(milliseconds: 250),
                  child: Global(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
