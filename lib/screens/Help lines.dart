import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';

class Helplines extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black,
          title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "Help",
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
              "Lines",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 5,
              height: 40,
            ),
            FaIcon(
              FontAwesomeIcons.phoneSquareAlt,
              color: Colors.green.shade600,
            ),
          ]),
        ),
        body: ListView(
          children: [
            SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 350,
                    child: Lottie.asset("assets/help.json"),
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text(
                      "Help",
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                      height: 40,
                    ),
                    Text(
                      "Lines",
                      style: TextStyle(
                        color: Colors.pink,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                      height: 40,
                    ),
                    FaIcon(
                      FontAwesomeIcons.phoneSquareAlt,
                      color: Colors.black,
                      size: 40,
                    ),
                  ]),
                  SizedBox(
                    width: 140,
                    height: 10,
                    child: Divider(
                      color: Colors.black,
                      thickness: 3.5,
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      const url = 'tel:011-23978046';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Card(
                        color: Colors.black,
                        child: ListTile(
                          leading: FaIcon(
                            FontAwesomeIcons.phoneSquare,
                            size: 30.0,
                            color: Colors.white,
                          ),
                          title: Text(
                            'Central Helpline',
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      const url = 'tel:104';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Card(
                        color: Colors.black,
                        child: ListTile(
                          leading: FaIcon(
                            FontAwesomeIcons.phoneSquare,
                            size: 30.0,
                            color: Colors.white,
                          ),
                          title: Text(
                            'Telangana',
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      const url = 'tel:0866-2410978';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Card(
                        color: Colors.black,
                        child: ListTile(
                          leading: FaIcon(
                            FontAwesomeIcons.phoneSquare,
                            size: 30.0,
                            color: Colors.white,
                          ),
                          title: Text(
                            'Andhra Pradesh',
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      const url = 'tel:9436055743';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Card(
                        color: Colors.black,
                        child: ListTile(
                          leading: FaIcon(
                            FontAwesomeIcons.phoneSquare,
                            size: 30.0,
                            color: Colors.white,
                          ),
                          title: Text(
                            'Arunachal Pradesh',
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      const url = 'tel:6913347770';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Card(
                        color: Colors.black,
                        child: ListTile(
                          leading: FaIcon(
                            FontAwesomeIcons.phoneSquare,
                            size: 30.0,
                            color: Colors.white,
                          ),
                          title: Text(
                            'Assam',
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      const url = 'tel:104';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Card(
                        color: Colors.black,
                        child: ListTile(
                          leading: FaIcon(
                            FontAwesomeIcons.phoneSquare,
                            size: 30.0,
                            color: Colors.white,
                          ),
                          title: Text(
                            'Bihar',
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      const url = 'tel:9779558282';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Card(
                        color: Colors.black,
                        child: ListTile(
                          leading: FaIcon(
                            FontAwesomeIcons.phoneSquare,
                            size: 30.0,
                            color: Colors.white,
                          ),
                          title: Text(
                            'Chandigarh',
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      const url = 'tel:104';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Card(
                        color: Colors.black,
                        child: ListTile(
                          leading: FaIcon(
                            FontAwesomeIcons.phoneSquare,
                            size: 30.0,
                            color: Colors.white,
                          ),
                          title: Text(
                            'Chhattisgarh',
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      const url = 'tel:104';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Card(
                        color: Colors.black,
                        child: ListTile(
                          leading: FaIcon(
                            FontAwesomeIcons.phoneSquare,
                            size: 30.0,
                            color: Colors.white,
                          ),
                          title: Text(
                            'DadraNagar Haveli',
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      const url = 'tel:011-22307145';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Card(
                        color: Colors.black,
                        child: ListTile(
                          leading: FaIcon(
                            FontAwesomeIcons.phoneSquare,
                            size: 30.0,
                            color: Colors.white,
                          ),
                          title: Text(
                            'Delhi',
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      const url = 'tel:104';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Card(
                        color: Colors.black,
                        child: ListTile(
                          leading: FaIcon(
                            FontAwesomeIcons.phoneSquare,
                            size: 30.0,
                            color: Colors.white,
                          ),
                          title: Text(
                            'Goa',
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      const url = 'tel:104';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Card(
                        color: Colors.black,
                        child: ListTile(
                          leading: FaIcon(
                            FontAwesomeIcons.phoneSquare,
                            size: 30.0,
                            color: Colors.white,
                          ),
                          title: Text(
                            'Gujarat',
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      const url = 'tel:8558893911';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Card(
                        color: Colors.black,
                        child: ListTile(
                          leading: FaIcon(
                            FontAwesomeIcons.phoneSquare,
                            size: 30.0,
                            color: Colors.white,
                          ),
                          title: Text(
                            'Haryana',
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      const url = 'tel:104';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Card(
                        color: Colors.black,
                        child: ListTile(
                          leading: FaIcon(
                            FontAwesomeIcons.phoneSquare,
                            size: 30.0,
                            color: Colors.white,
                          ),
                          title: Text(
                            'Himachal Pradesh',
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      const url = 'tel:01912520982';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Card(
                        color: Colors.black,
                        child: ListTile(
                          leading: FaIcon(
                            FontAwesomeIcons.phoneSquare,
                            size: 30.0,
                            color: Colors.white,
                          ),
                          title: Text(
                            'Jammu',
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      const url = 'tel:104';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Card(
                        color: Colors.black,
                        child: ListTile(
                          leading: FaIcon(
                            FontAwesomeIcons.phoneSquare,
                            size: 30.0,
                            color: Colors.white,
                          ),
                          title: Text(
                            'Jharkhand',
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      const url = 'tel:104';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Card(
                        color: Colors.black,
                        child: ListTile(
                          leading: FaIcon(
                            FontAwesomeIcons.phoneSquare,
                            size: 30.0,
                            color: Colors.white,
                          ),
                          title: Text(
                            'Karnataka',
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      const url = 'tel:01942440283';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Card(
                        color: Colors.black,
                        child: ListTile(
                          leading: FaIcon(
                            FontAwesomeIcons.phoneSquare,
                            size: 30.0,
                            color: Colors.white,
                          ),
                          title: Text(
                            'Kashmir',
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      const url = 'tel:0471-2552056';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Card(
                        color: Colors.black,
                        child: ListTile(
                          leading: FaIcon(
                            FontAwesomeIcons.phoneSquare,
                            size: 30.0,
                            color: Colors.white,
                          ),
                          title: Text(
                            'Kerala',
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      const url = 'tel:01982256462';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Card(
                        color: Colors.black,
                        child: ListTile(
                          leading: FaIcon(
                            FontAwesomeIcons.phoneSquare,
                            size: 30.0,
                            color: Colors.white,
                          ),
                          title: Text(
                            'Ladakh',
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      const url = 'tel:104';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Card(
                        color: Colors.black,
                        child: ListTile(
                          leading: FaIcon(
                            FontAwesomeIcons.phoneSquare,
                            size: 30.0,
                            color: Colors.white,
                          ),
                          title: Text(
                            'Lakshadweep',
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      const url = 'tel:104';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Card(
                        color: Colors.black,
                        child: ListTile(
                          leading: FaIcon(
                            FontAwesomeIcons.phoneSquare,
                            size: 30.0,
                            color: Colors.white,
                          ),
                          title: Text(
                            'Madhya Pradesh',
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      const url = 'tel:020-26127394';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Card(
                        color: Colors.black,
                        child: ListTile(
                          leading: FaIcon(
                            FontAwesomeIcons.phoneSquare,
                            size: 30.0,
                            color: Colors.white,
                          ),
                          title: Text(
                            'Maharashtra',
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      const url = 'tel:3852411668';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Card(
                        color: Colors.black,
                        child: ListTile(
                          leading: FaIcon(
                            FontAwesomeIcons.phoneSquare,
                            size: 30.0,
                            color: Colors.white,
                          ),
                          title: Text(
                            'Manipur',
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      const url = 'tel:108';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Card(
                        color: Colors.black,
                        child: ListTile(
                          leading: FaIcon(
                            FontAwesomeIcons.phoneSquare,
                            size: 30.0,
                            color: Colors.white,
                          ),
                          title: Text(
                            'Meghalaya',
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      const url = 'tel:102';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Card(
                        color: Colors.black,
                        child: ListTile(
                          leading: FaIcon(
                            FontAwesomeIcons.phoneSquare,
                            size: 30.0,
                            color: Colors.white,
                          ),
                          title: Text(
                            'Mizoram',
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      const url = 'tel:9439994859';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Card(
                        color: Colors.black,
                        child: ListTile(
                          leading: FaIcon(
                            FontAwesomeIcons.phoneSquare,
                            size: 30.0,
                            color: Colors.white,
                          ),
                          title: Text(
                            'Odisha',
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      const url = 'tel:104';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Card(
                        color: Colors.black,
                        child: ListTile(
                          leading: FaIcon(
                            FontAwesomeIcons.phoneSquare,
                            size: 30.0,
                            color: Colors.white,
                          ),
                          title: Text(
                            'Puducherry',
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      const url = 'tel:104';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Card(
                        color: Colors.black,
                        child: ListTile(
                          leading: FaIcon(
                            FontAwesomeIcons.phoneSquare,
                            size: 30.0,
                            color: Colors.white,
                          ),
                          title: Text(
                            'Punjab',
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      const url = 'tel:0141-2225624';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Card(
                        color: Colors.black,
                        child: ListTile(
                          leading: FaIcon(
                            FontAwesomeIcons.phoneSquare,
                            size: 30.0,
                            color: Colors.white,
                          ),
                          title: Text(
                            'Rajasthan',
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      const url = 'tel:104';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Card(
                        color: Colors.black,
                        child: ListTile(
                          leading: FaIcon(
                            FontAwesomeIcons.phoneSquare,
                            size: 30.0,
                            color: Colors.white,
                          ),
                          title: Text(
                            'Sikkim	',
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      const url = 'tel:044-29510500';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Card(
                        color: Colors.black,
                        child: ListTile(
                          leading: FaIcon(
                            FontAwesomeIcons.phoneSquare,
                            size: 30.0,
                            color: Colors.white,
                          ),
                          title: Text(
                            'Tamil Nadu	',
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      const url = 'tel:0381-2315879';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Card(
                        color: Colors.black,
                        child: ListTile(
                          leading: FaIcon(
                            FontAwesomeIcons.phoneSquare,
                            size: 30.0,
                            color: Colors.white,
                          ),
                          title: Text(
                            'Tripura',
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      const url = 'tel:104';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Card(
                        color: Colors.black,
                        child: ListTile(
                          leading: FaIcon(
                            FontAwesomeIcons.phoneSquare,
                            size: 30.0,
                            color: Colors.white,
                          ),
                          title: Text(
                            'Uttarakhand',
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      const url = 'tel:18001805145';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Card(
                        color: Colors.black,
                        child: ListTile(
                          leading: FaIcon(
                            FontAwesomeIcons.phoneSquare,
                            size: 30.0,
                            color: Colors.white,
                          ),
                          title: Text(
                            'Uttar Pradesh',
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      const url = '1800313444222';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Card(
                        color: Colors.black,
                        child: ListTile(
                          leading: FaIcon(
                            FontAwesomeIcons.phoneSquare,
                            size: 30.0,
                            color: Colors.white,
                          ),
                          title: Text(
                            'West Bengal',
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
