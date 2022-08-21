import 'dart:convert';

import 'package:http/http.dart' as http;
import '../models/launch.dart';

const baseUrl = 'api.spacexdata.com';

Future<List<Launch>> fetchUpcomingLaunches() async {
  final url = Uri.https(baseUrl, 'v5/launches/upcoming');
  final res = await http.get(url);

  if (res.statusCode == 200) {
    final json = jsonDecode(res.body) as List;
    return json.map((launch) => Launch.fromJson(launch)).toList();
  } else {
    throw Exception('Failed to load data');
  }
}
