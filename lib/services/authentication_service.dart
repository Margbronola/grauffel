import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import '../models/user_model.dart';
import '../app/global.dart';

class AuthenticationService {
  Future<Map<String, dynamic>?> login(
      {required String firebaseToken, required String deviceName}) async {
    debugPrint("firbase_token: $firebaseToken");
    debugPrint("AuthenticationService.login");
    try {
      final respo = await http.post(Uri.parse("$urlApi/login"), body: {
        "firebase_token": firebaseToken,
        "device_name": deviceName,
      });
      debugPrint(respo.body);
      if (respo.statusCode == 200) {
        var data = json.decode(respo.body);
        try {
          debugPrint(data['client']);
          UserModel user = UserModel.fromJson(data['client']);
          String token = data['access_token'];

          return {'user': user, 'token': token};
        } catch (e) {
          debugPrint(e.toString());
          debugPrint("convert fail");
        }
        Fluttertoast.showToast(msg: "Successful Login");
      }
    } catch (e) {
      debugPrint("server login fail");
      debugPrint(e.toString());
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
  //     debugPrint(e.toString());
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
