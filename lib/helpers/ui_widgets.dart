import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shimmer/shimmer.dart';
import 'package:url_launcher/url_launcher.dart';

Widget appBar() {
  return AppBar(
    automaticallyImplyLeading: false,
    elevation: 0.0,
    backgroundColor: Colors.black,
    title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(
        "Covi",
        style: TextStyle(
            color: Colors.green, fontWeight: FontWeight.bold, fontSize: 25.0),
      ),
      SizedBox(
        width: 5,
        height: 40,
      ),
      Text(
        "Care",
        style: TextStyle(
          fontSize: 25.0,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    ]),
  );
}

Widget shimmerWidget(double height, double width) {
  return Container(
    width: width,
    padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: height,
          child: Shimmer.fromColors(
            baseColor: Colors.grey[300],
            highlightColor: Colors.grey[100],
            child: Container(
              color: Colors.white,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget shimmerLine(double width) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 8.0),
    child: Container(
      height: 14.0,
      width: width,
      child: Shimmer.fromColors(
        baseColor: Colors.grey[300],
        highlightColor: Colors.grey[100],
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
        ),
      ),
    ),
  );
}

Widget helpLineTile(String title, String num) {
  return GestureDetector(
    onTap: () async {
      String url = num;
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    },
    child: Padding(
      padding: EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: ListTile(
          trailing: FaIcon(
            FontAwesomeIcons.phoneSquare,
            size: 30.0,
            color: Colors.black,
          ),
          title: Text(
            title,
            style: TextStyle(
              fontSize: 30.0,
            ),
          ),
        ),
      ),
    ),
  );
}
