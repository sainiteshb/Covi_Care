import 'dart:convert';

import 'package:Covi_Care/helpers/ui_widgets.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'country_page.dart';

class CovidCase extends StatefulWidget {
  @override
  _CovidCaseState createState() => _CovidCaseState();
}

class _CovidCaseState extends State<CovidCase> {
  Map mapResponse;
  List countryData;

  Future fetchdata() async {
    http.Response response;
    response = await http.get(Uri.parse("https://corona.lmao.ninja/v2/all"));
    setState(() {
      if (response.statusCode == 200) {
        mapResponse = json.decode(response.body);
      }
    });
  }

//TODO:COUNTRY
  Future fetchCountry() async {
    http.Response response;
    response = await http
        .get(Uri.parse("https://corona.lmao.ninja/v2/countries?sort=cases"));
    setState(() {
      if (response.statusCode == 200) {
        countryData = json.decode(response.body);
      }
    });
  }

  @override
  void initState() {
    fetchdata();
    fetchCountry();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.white,
      body: RefreshIndicator(
        backgroundColor: Colors.black,
        color: Colors.blue.shade900,
        onRefresh: fetchdata,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black,
                      width: 1.0,
                      style: BorderStyle.solid),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              "Worldwide",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                letterSpacing: 1,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Patua",
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                        width: 133,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 100,
                                width: 160,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color(0xffc9184a),
                                      width: 1.0,
                                      style: BorderStyle.solid),
                                  color: Color(0xffffccd5),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "CONFIRMED",
                                      style: TextStyle(
                                          fontSize: 22,
                                          color: Color(0xffc9184a),
                                          fontFamily: "Patua"),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    mapResponse == null
                                        ? Text("Loading..")
                                        : Text(
                                            mapResponse["cases"].toString(),
                                            style: TextStyle(
                                                fontSize: 17,
                                                color: Color(0xffc9184a),
                                                fontWeight: FontWeight.bold),
                                          ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(7),
                                height: 100,
                                width: 160,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color(0xff0077b6),
                                      width: 1.0,
                                      style: BorderStyle.solid),
                                  color: Color(0xffade8f4),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "ACTIVE",
                                      style: TextStyle(
                                          fontSize: 22,
                                          color: Color(0xff0077b6),
                                          fontFamily: "Patua"),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    mapResponse == null
                                        ? Text("Loading..")
                                        : Text(
                                            mapResponse["active"].toString(),
                                            style: TextStyle(
                                                fontSize: 17,
                                                color: Color(0xff0077b6),
                                                fontWeight: FontWeight.bold),
                                          ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                height: 100,
                                width: 160,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color(0xff1a7431),
                                      width: 1.0,
                                      style: BorderStyle.solid),
                                  color: Color(0xff92e6a7),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "RECOVERED",
                                      style: TextStyle(
                                          fontSize: 22,
                                          color: Color(0xff1a7431),
                                          fontFamily: "Patua"),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    mapResponse == null
                                        ? Text("Loading..")
                                        : Text(
                                            mapResponse["recovered"].toString(),
                                            style: TextStyle(
                                                fontSize: 17,
                                                color: Color(0xff1a7431),
                                                fontWeight: FontWeight.bold),
                                          ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(7),
                                height: 100,
                                width: 160,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1.0, style: BorderStyle.solid),
                                  color: Color(0xff495057),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "DEATHS",
                                      style: TextStyle(
                                          fontSize: 22,
                                          color: Colors.white,
                                          fontFamily: "Patua"),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    mapResponse == null
                                        ? Text("Loading..")
                                        : Text(
                                            mapResponse["deaths"].toString(),
                                            style: TextStyle(
                                                fontSize: 17,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: Container(
                              width: 108,
                              height: 36,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return CountryPage();
                                  }));
                                },
                                child: Center(
                                  child: Text(
                                    "Regional",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Patua",
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Center(
                child: Text(
                  "Most Affected Countries",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Patua",
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              child: mapResponse == null
                  ? Text("loading......")
                  : Container(
                      child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 6,
                          itemBuilder: (context, index) {
                            return Container(
                              width: 86,
                              height: 52,
                              margin: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              child: Center(
                                child: Row(
                                  children: [
                                    Image.network(countryData[index]
                                        ['countryInfo']['flag']),
                                    SizedBox(width: 10),
                                    Text(
                                      countryData[index]['country'],
                                      style: TextStyle(
                                          fontFamily: "Patua",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25),
                                    ),
                                    SizedBox(width: 12),
                                    Text(
                                      'Deaths:' +
                                          countryData[index]['deaths']
                                              .toString(),
                                      style: TextStyle(
                                          color: Color(0xffF40000),
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "Patua",
                                          fontSize: 16),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
