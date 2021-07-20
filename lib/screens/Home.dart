import 'package:Covi_Care/screens/CovidCases/Covid_Cases.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Help lines.dart';
import 'Maps.dart';
import 'News.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var currentIndex = 0;
  List listofscreens = [
    CovidCase(),
    News(),
    Maps(),
    Helplines(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listofscreens[currentIndex],
      bottomNavigationBar: BottomNavyBar(
        backgroundColor: Colors.black,
        selectedIndex: currentIndex,
        onItemSelected: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: FaIcon(
              FontAwesomeIcons.home,
            ),
            title: Text("Home"),
            activeColor: Colors.white,
            inactiveColor: Colors.green,
          ),
          BottomNavyBarItem(
            icon: FaIcon(
              FontAwesomeIcons.newspaper,
            ),
            title: Text("News"),
            activeColor: Colors.white,
            inactiveColor: Colors.green,
          ),
          BottomNavyBarItem(
            icon: FaIcon(
              FontAwesomeIcons.syringe,
            ),
            title: Text("Vaccination Center Locator"),
            activeColor: Colors.white,
            inactiveColor: Colors.green,
          ),
          BottomNavyBarItem(
            icon: FaIcon(
              FontAwesomeIcons.phone,
            ),
            title: Text("Help lines"),
            activeColor: Colors.white,
            inactiveColor: Colors.green,
          ),
        ],
      ),
    );
  }
}
