import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';

class Maps extends StatefulWidget {
  @override
  _MapsState createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  final flutterWebviewPlugin = new FlutterWebviewPlugin();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      child: WebviewScaffold(
        url:
            'https://www.google.co.in/maps/search/vaccination+centers+in+india/@17.2449793,72.6542913,5z/data=!3m1!4b1',
        withJavascript: true,
        withZoom: true,
        hidden: true,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black,
          title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "Vaccination",
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
              "Centers",
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
              FontAwesomeIcons.syringe,
              color: Colors.green.shade600,
            ),
          ]),
          actions: <Widget>[
            InkWell(
              child: Icon(
                Icons.refresh,
                color: Colors.white,
              ),
              onTap: () {
                flutterWebviewPlugin.reloadUrl(
                    'https://www.google.co.in/maps/search/vaccination+centers+in+india/@17.2449793,72.6542913,5z/data=!3m1!4b1');
              },
            ),
          ],
        ),
        initialChild: SafeArea(
            child: Scaffold(
          backgroundColor: Colors.black,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.black,
                  height: 250,
                  width: 250,
                  child: Lottie.asset('assets/vaccine.json'),
                ),
                Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Text(
                    'Locating Vaccination Center\'s for you ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 23,
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}
