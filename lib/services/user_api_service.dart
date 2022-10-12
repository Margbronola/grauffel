import 'dart:convert';
import 'dart:io';

import 'package:egczacademy/models/transaction_model.dart';
import 'package:egczacademy/models/user_model.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';

import '../app/global.dart';

class UserAPIService {
  Future<UserModel?> fethUserDetailsApi({required String token}) async {
    try {
      final respo =
          await http.get(Uri.parse("$urlApi/client/details"), headers: {
        "Accept": "application/json",
        "Authorization": "Bearer $token",
      });

      if (respo.statusCode == 200) {
        var data = json.decode(respo.body);
        try {
          debugPrint("FETCH USER PASS");
          return UserModel.fromJson(data);
        } catch (e) {
          debugPrint(e.toString());
          debugPrint("FROMJSON FAIL");
        }
      } else {
        debugPrint("SERVER FAIL fetch user details");
      }
    } catch (e) {
      debugPrint(e.toString());
      debugPrint("FETCH USER FAIL");
    }
    return null;
  }

  Future<void> updateAvatar({XFile? image, required String token}) async {
    try {
      final respo =
          await http.post(Uri.parse("$urlApi/client/update-avatar"), body: {
        "avatar": convertToBase64(File(image!.path))
      }, headers: {
        "Accept": "application/json",
        "Authorization": "Bearer $token",
      });

      if (respo.statusCode == 200) {
        var data = json.decode(respo.body);
        try {
          debugPrint(data);

          debugPrint("CHANGE AVATAR");
        } catch (e) {
          debugPrint(e.toString());
          debugPrint("CHANGE AVATAR FAIL");
        }
      } else {
        debugPrint("SERVER FAIL updateAvatar");
      }
    } catch (e) {
      debugPrint(e.toString());
      debugPrint("CHANGE AVATAR FAIL");
    }
  }

  Future<void> updateDetails(
      {required UserModel userToEdit, required String token}) async {
    Map data = userToEdit.toJson();
    data.removeWhere(
      (key, value) => value == null,
    );
    debugPrint("DATA $data");
    try {
      final respo = await http.post(Uri.parse("$urlApi/client/update-details"),
          body: data['experience'],
          headers: {
            "Accept": "application/json",
            "Authorization": "Bearer $token",
          });
      debugPrint("STATUSCODE ${respo.statusCode}");
      if (respo.statusCode == 200) {
        var data = json.decode(respo.body);

        try {
          debugPrint(data);
          debugPrint("UPDATE USER PASS");
        } catch (e) {
          debugPrint(e.toString());
          debugPrint("FROMJSON FAIL");
        }
      } else {
        debugPrint("SERVER FAILED updateDetails");
      }
    } catch (e) {
      debugPrint(e.toString());
      debugPrint("UPDATE USER FAIL");
    }
  }

  Future<bool> updatePassword(
      {required String oldPassword,
      required String newPassword,
      required String cPassword,
      required String token}) async {
    try {
      final respo =
          await http.post(Uri.parse("$urlApi/client/update-password"), body: {
        "old_password": oldPassword,
        "password": newPassword,
        "c_password": cPassword
      }, headers: {
        "Accept": "application/json",
        "Authorization": "Bearer $token",
      });

      if (respo.statusCode == 200) {
        debugPrint("UPDATE PASSWORD PASS");
        return true;
      } else {
        debugPrint(respo.body);
        debugPrint("SERVER FAIL update password");
      }
    } catch (e) {
      debugPrint(e.toString());
      debugPrint("UPDATE PASSWORD FAIL");
    }
    return false;
  }

  Future<List<TransactionModel>?> fetchHistory({required String token}) async {
    try {
      final respo =
          await http.get(Uri.parse("$urlApi/client/points-history"), headers: {
        "Accept": "application/json",
        "Authorization": "Bearer $token",
      });

      if (respo.statusCode == 200) {
        var data = json.decode(respo.body);
        List transactions = data['transactions'];
        debugPrint("UPDATE PASSWORD PASS");
        return transactions.map((e) => TransactionModel.fromJson(e)).toList();
      } else {
        debugPrint(respo.body);
        debugPrint("SERVER FAIL Fetch History");
      }
    } catch (e) {
      debugPrint(e.toString());
      debugPrint("UPDATE PASSWORD FAIL");
    }
    return null;
  }

  bool _notificationStatus = false;
  set noticationStatus(bool value) => _notificationStatus = value;
  get notificationStatus => _notificationStatus;
  FirebaseMessaging messaging = FirebaseMessaging.instance;

  Future<void> saveFCM({
    required String token,
  }) async {
    var fcmToken = await messaging.getToken();
    debugPrint(fcmToken);
    debugPrint(token);
    try {
      final respo =
          await http.post(Uri.parse("$urlApi/client/save-fcm"), body: {
        "token": fcmToken,
      }, headers: {
        "Accept": "application/json",
        "Authorization": "Bearer $token",
      });
      var data = json.decode(respo.body);
      debugPrint("$data");
    } catch (e) {
      debugPrint(e.toString());
      debugPrint("saveFCM FAIL");
    }
    _notificationStatus = true;
  }

  Future<void> removeFCMToken({
    required String token,
  }) async {
    var fcmToken = await messaging.getToken();
    try {
      final respo =
          await http.post(Uri.parse("$urlApi/client/remove-fcm"), body: {
        "token": fcmToken,
      }, headers: {
        "Accept": "application/json",
        "Authorization": "Bearer $token",
      });
      var data = json.decode(respo.body);
      debugPrint("$data");
    } catch (e) {
      debugPrint(e.toString());
      debugPrint("REMOVE FCM  FAIL");
    }
    _notificationStatus = false;
  }
}
