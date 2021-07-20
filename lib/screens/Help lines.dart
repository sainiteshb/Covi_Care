import 'package:Covi_Care/helpers/ui_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';

class Helplines extends StatefulWidget {
  @override
  _HelplinesState createState() => _HelplinesState();
}

class _HelplinesState extends State<Helplines> {
  bool showProgressloading = false;
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
                    height: 200,
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
                  helpLineTile("Central Helpline", "tel:011-23978046"),
                  helpLineTile("Telangana", "tel:104"),
                  helpLineTile("Andhra Pradesh", "tel:0866-2410978"),
                  helpLineTile("Arunachal Pradesh", "tel:9436055743"),
                  helpLineTile("Assam", "tel:6913347770"),
                  helpLineTile("Bihar", "tel:104"),
                  helpLineTile("Chandigarh", "tel:9779558282"),
                  helpLineTile("Chhattisgarh", "tel:104"),
                  helpLineTile("DadraNagar Haveli", "tel:104"),
                  helpLineTile("Delhi", "tel:011-22307145"),
                  helpLineTile("Goa", "tel:104"),
                  helpLineTile("Gujarat", "tel:104"),
                  helpLineTile("Haryana", "tel:8558893911"),
                  helpLineTile("Himachal Pradesh", "tel:104"),
                  helpLineTile("Jammu", "tel:01912520982"),
                  helpLineTile("Jharkhand", "tel:104"),
                  helpLineTile("Karnataka", "tel:104"),
                  helpLineTile("Kashmir", "tel:01942440283"),
                  helpLineTile("Kerala", "tel:0471-2552056"),
                  helpLineTile("Ladakh", "tel:01982256462"),
                  helpLineTile("Lakshadweep", "tel:104"),
                  helpLineTile("Madhya Pradesh", "tel:104"),
                  helpLineTile("Maharashtra", "tel:020-26127394"),
                  helpLineTile("Manipur", "tel:3852411668"),
                  helpLineTile("Meghalaya", "tel:108"),
                  helpLineTile("Mizoram", "tel:102"),
                  helpLineTile("Odisha", "tel:9439994859'"),
                  helpLineTile("Puducherry", "tel:104"),
                  helpLineTile("Punjab", "tel:104"),
                  helpLineTile("Rajasthan", "tel:0141-2225624"),
                  helpLineTile("Sikkim", "tel:104"),
                  helpLineTile("Tamil Nadu", "tel:044-29510500"),
                  helpLineTile("Tripura", "tel:0381-2315879"),
                  helpLineTile("Uttarakhand", "tel:104"),
                  helpLineTile("Uttar Pradesh", "tel:18001805145"),
                  helpLineTile("West Bengal", "1800313444222"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
