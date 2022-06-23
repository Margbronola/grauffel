import 'dart:convert';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import '../models/user_model.dart';
import 'global.dart';

class AuthenticationService {
  //login in server
  Future<bool> login(
      {required String firebase_token, required String device_name}) async {
    try {
      final respo = await http.post(Uri.parse("$url/login"),
          body: {"firebase_token": firebase_token, "device_name": device_name});
      var data = json.decode(respo.body);

      if (respo.statusCode == 200) {
        print(data);
        Fluttertoast.showToast(msg: "Successful");
        return true;
      }
    } catch (e) {
      print(e);
      return false;
    }
    print('NO user');
    return false;
  }

  //server register
  Future<bool> register({required UserModel userModel}) async {
    try {
      Map user = userModel.toJson();
      user.removeWhere((key, value) => value == null);
      final respo = await http.post(Uri.parse("$url/register"), body: user);
      var data = json.decode(respo.body);
      if (respo.statusCode == 200) {
        print(data);
        print("success");
        Fluttertoast.showToast(msg: "Successful");
        return true;
      }
    } catch (e) {
      print(e);
      return false;
    }
    return false;
  }

  Future<bool>? logout() async {
    return false;
  }
}
