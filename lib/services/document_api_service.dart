import 'dart:convert';
import 'package:http/http.dart' as http;
import '../app/global.dart';

class DocumentAPIService {
  Future<void> fetchDocuments({required String token}) async {
    try {
      final respo =
          await http.get(Uri.parse("$urlApi/clients/document"), headers: {
        "Accept": "application/json",
        "Authorization": "Bearer $token",
      });
      if (respo.statusCode == 200) {
        var data = json.decode(respo.body);
        try {
          print(data);
          print("FETCH DOCS PASS");
        } catch (e) {
          print(e);
          print("FROMJSON FAIL");
        }
      } else {
        print("SERVER FAIL");
      }
    } catch (e) {
      print(e);
      print("FETCH DOCS FAIL");
    }
  }
}
