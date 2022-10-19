import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import '../models/user_model.dart';
import '../app/global.dart';

class AuthenticationService {
  Future<Map<String, dynamic>?> login(
      {required String firebaseToken, required String deviceName}) async {
    print("firbase_token: $firebaseToken");
    print("AuthenticationService.login");
    try {
      final respo = await http.post(Uri.parse("$urlApi/login"), body: {
        "firebase_token": firebaseToken,
        "device_name": deviceName,
      }, headers: {
        "Accept": "application/json",
      });
      if (respo.statusCode == 200) {
        var data = json.decode(respo.body);
        Fluttertoast.showToast(msg: "Successful Login");
        print("User Data: $data");
        try {
          UserModel user = UserModel.fromJson(data['client']);
          String token = data['access_token'];

          return {'user': user, 'token': token};
        } catch (e) {
          print("User Data: $data");
          print(e);
          debugPrint("convert login fail here");
        }
      }
    } catch (e) {
      debugPrint("server login fail");
      print(e);
      return null;
    }
    return null;
  }

  //server register
  // Future<String?> register({required UserModel userModel}) async {
  //   try {
  //     Map user = userModel.toJson();
  //     user.removeWhere((key, value) => value == null);
  //     final respo = await http.post(Uri.parse("$urlApi/register"), body: user);
  //     if (respo.statusCode == 200) {
  //       var data = json.decode(respo.body);
  //       print(data);
  //       print("success");
  //       Fluttertoast.showToast(msg: "Successful Sign Unp");
  //       return data;
  //     }
  //   } catch (e) {
  // print(e);
  //     return null;
  //   }
  //   return null;
  // }

  Future<bool> logout({required String token, String? fcmToken}) async {
    try {
      final respo = await http.post(Uri.parse("$urlApi/logout"), body: {
        "fcm_token": fcmToken
      }, headers: {
        "Accept": "application/json",
        "Authorization": "Bearer $token",
      });
      if (respo.statusCode == 200) {
        debugPrint("success");
        Fluttertoast.showToast(msg: "Logout Successfully");
        return true;
      }
    } catch (e) {
      debugPrint("FAIL TO LOGOUT: $e");
    }
    return false;
  }
}
