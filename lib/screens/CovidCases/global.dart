import 'package:Covi_Care/helpers/covid_helper.dart';
import 'package:Covi_Care/models/coivd_global.dart';
import 'package:flutter/material.dart';

import 'global_loading.dart';
import 'global_statistics.dart';

CovidService covidService = CovidService();

class Global extends StatefulWidget {
  @override
  _GlobalState createState() => _GlobalState();
}

class _GlobalState extends State<Global> {
  Future<GlobalSummaryModel> summary;

  @override
  void initState() {
    super.initState();
    summary = covidService.getGlobalSummary();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Global Corona Virus Cases",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    summary = covidService.getGlobalSummary();
                  });
                },
                child: Icon(
                  Icons.refresh,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          FutureBuilder(
            future: summary,
            builder: (context, snapshot) {
              if (snapshot.hasError)
                return Center(
                  child: Text("Error"),
                );
              switch (snapshot.connectionState) {
                case ConnectionState.waiting:
                  return GlobalLoading();
                default:
                  return !snapshot.hasData
                      ? Center(
                          child: Text("Empty"),
                        )
                      : GlobalStatistics(
                          summary: snapshot.data,
                        );
              }
            },
          ),
        ],
      ),
    );
  }
}
