import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import '../models/user_model.dart';
import '../app/global.dart';

class AuthenticationService {
  //login in server
  Future<Map<String, dynamic>?> login(
      {required String firebase_token, required String device_name}) async {
    try {
      final respo = await http.post(Uri.parse("$url/login"),
          body: {"firebase_token": firebase_token, "device_name": device_name});

      if (respo.statusCode == 200) {
        var data = json.decode(respo.body);
        try {
          UserModel user = UserModel.fromJson(data['client']);
          String token = data['access_token'];

          //TODO:DELETE PRINT
          print("LOGIN : $user");
          print("TOKEN : $token");
          return {'user': user, 'token': token};
        } catch (e) {
          print(e);
          print("convert fail");
        }
        Fluttertoast.showToast(msg: "Successful Login");
      }
    } catch (e) {
      print(e);
      return null;
    }
    return null;
  }

  //server register
  Future<String?> register({required UserModel userModel}) async {
    try {
      Map user = userModel.toJson();
      user.removeWhere((key, value) => value == null);
      final respo = await http.post(Uri.parse("$url/register"), body: user);
      if (respo.statusCode == 200) {
        var data = json.decode(respo.body);
        print(data);
        print("success");
        Fluttertoast.showToast(msg: "Successful Sign Unp");
        return data;
      }
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
    return null;
  }

  Future<bool> logout({required String token}) async {
    try {
      final respo = await http.post(Uri.parse("$url/logout"), headers: {
        "Accept": "application/json",
        "Authorization": "Bearer $token",
      });
      if (respo.statusCode == 200) {
        var data = json.decode(respo.body);
        print("success");
        Fluttertoast.showToast(msg: "Logout Successfully");
        return true;
      }
    } catch (e) {
      print(e);
    }
    return false;
  }
}
