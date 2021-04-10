import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';

class News extends StatefulWidget {
  @override
  _MapsState createState() => _MapsState();
}

class _MapsState extends State<News> {
  final flutterWebviewPlugin = new FlutterWebviewPlugin();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      child: WebviewScaffold(
        url:
            'https://www.google.com/search?q=covid+19+news&rlz=1C1CHBF_enIN914IN914&oq=covid+19+news&aqs=chrome.0.0i457j69i59l2j0i402l2j0i131i433l5.3369j0j15&sourceid=chrome&ie=UTF-8',
        withJavascript: true,
        withZoom: true,
        hidden: true,
        appBar: AppBar(
          automaticallyImplyLeading: false,
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
              "News",
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
              FontAwesomeIcons.newspaper,
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
                    'https://www.google.com/search?q=covid+19+news&rlz=1C1CHBF_enIN914IN914&oq=covid+19+news&aqs=chrome.0.0i457j69i59l2j0i402l2j0i131i433l5.3369j0j15&sourceid=chrome&ie=UTF-8');
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
                  child: Lottie.asset('assets/News.json'),
                ),
                Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Text(
                    'Fetching News for you Please Wait!',
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
