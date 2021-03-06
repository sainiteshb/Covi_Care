import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CountryPage extends StatefulWidget {
  @override
  _CountryPageState createState() => _CountryPageState();
}

class _CountryPageState extends State<CountryPage> {
  List countryData;
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
    // TODO: implement initState
    super.initState();
    fetchCountry();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "COUNTRY DATA",
          style: TextStyle(
            //fontWeight:FontWeight.bold,
            fontFamily: "Patua",
            letterSpacing: 1,
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
        //centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: countryData == null ? 0 : countryData.length,
          itemBuilder: (context, index) {
            return Container(
              height: 130,
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade100,
                    blurRadius: 10,
                    offset: Offset(0, 10))
              ]),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: (Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          countryData[index]["country"],
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Image.network(
                          countryData[index]['countryInfo']['flag'],
                          height: 50,
                          width: 60,
                        )
                      ],
                    )),
                  ),
                  Expanded(
                      child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'CONFIRMED:' + countryData[index]['cases'].toString(),
                          style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Patua",
                              fontSize: 15),
                        ),
                        Text(
                          'ACTIVE:' + countryData[index]['active'].toString(),
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Patua"),
                        ),
                        Text(
                          'RECOVERED:' +
                              countryData[index]['recovered'].toString(),
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Patua"),
                        ),
                        Text(
                          'DEATHS:' + countryData[index]['deaths'].toString(),
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Patua"),
                        ),
                        Text(
                          'TODAY CASES:' +
                              countryData[index]['todayCases'].toString(),
                          style: TextStyle(
                              color: Colors.red.shade900,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Patua"),
                        ),
                      ],
                    ),
                  ))
                ],
              ),
            );
          }),
    );
  }
}
