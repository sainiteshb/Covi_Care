import 'package:Covi_Care/models/coivd_global.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CovidService {
  Future<GlobalSummaryModel> getGlobalSummary() async {
    final data = await http.Client().get("https://api.covid19api.com/summary");

    if (data.statusCode != 200) throw Exception();

    GlobalSummaryModel summary =
        new GlobalSummaryModel.fromJson(json.decode(data.body));

    return summary;
  }
}
