import 'dart:convert';

import 'package:egczacademy/models/user_model.dart';
import 'package:http/http.dart' as http;

import '../app/global.dart';

class UserService {
  String? _token;
  UserModel? _user;

  set fetchToken(value) => _token = value;
  set fetchUser(value) => _user = value;

  get token => _token;
  get user => _user;

  Future<void> fethUserDetailsApi({required String token}) async {
    try {
      final respo = await http.get(Uri.parse("$url/client/details"), headers: {
        "Accept": "application/json",
        "Authorization": "Bearer $token",
      });
      if (respo.statusCode == 200) {
        var data = json.decode(respo.body);
        try {
          _user = UserModel.fromJson(data);
          print("FETCH USER PASS");
        } catch (e) {
          print(e);
          print("FROMJSON FAIL");
        }
      } else {
        print("SERVER FAIL");
      }
    } catch (e) {
      print(e);
      print("FETCH USER FAIL");
    }
  }
}
