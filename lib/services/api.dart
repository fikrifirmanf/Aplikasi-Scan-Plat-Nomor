import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:scan_plat/model/plat_model.dart';

String url = "https://www.prmkarangtawang.org/test_api/platapi.php";
Future<List<Plat>> getPlatData() async {
  final response = await http.get(url);
  if (response.statusCode == 200) {
    print('masuk');
    return compute(platFromJson, response.body);
  } else {
    throw Exception('Failed to load');
  }
}