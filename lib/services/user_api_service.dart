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
  Future<bool> deleteAccount({required String token}) async {
    try {
      final respo =
          await http.delete(Uri.parse("$urlApi/client/delete"), headers: {
        "Accept": "application/json",
        "Authorization": "Bearer $token",
      });

      if (respo.statusCode == 200) {
        var data = json.decode(respo.body);
        try {
          debugPrint("DELETE USER PASS");
          return true;
        } catch (e) {
          print(e);
          debugPrint("FROMJSON FAIL");
        }
      } else {
        debugPrint("SERVER FAIL fetch user details");
      }
    } catch (e) {
      print(e);
      debugPrint("FETCH USER FAIL");
    }
    return false;
  }

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
          print(e);
          debugPrint("FROMJSON FAIL");
        }
      } else {
        debugPrint("SERVER FAIL fetch user details");
      }
    } catch (e) {
      print(e);
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
          debugPrint("CHANGE AVATAR");
        } catch (e) {
          print(e);
          debugPrint("CHANGE AVATAR FAIL");
        }
      } else {
        debugPrint("SERVER FAIL updateAvatar");
      }
    } catch (e) {
      print(e);
      debugPrint("CHANGE AVATAR FAIL");
    }
  }

  Future<bool> updateDetails(
      {required UserModel userToEdit, required String token}) async {
    Map<String, dynamic> data = userToEdit.toJson();

    data.removeWhere(
      (key, value) => value == null,
    );

    data.forEach((key, value) async {
      if (value.runtimeType != String) {
        data.update(key, (value) => value.toString());
      }
    });

    print("DATA");
    print(data);

    try {
      final respo = await http.post(
        Uri.parse("$urlApi/client/update-details"),
        headers: {
          "Accept": "application/json",
          "Authorization": "Bearer $token",
        },
        body: data,
      );
      print("BODY ${respo.body}");
      if (respo.statusCode == 200) {
        // try {
        debugPrint("UPDATE USER PASS");
        return true;

        // } catch (e) {
        //   print(e);
        //   debugPrint("FROMJSON FAIL");
        // }
      } else {
        debugPrint("SERVER FAILED updateDetails");
      }
    } catch (e) {
      print(e);
      debugPrint("UPDATE USER FAIL");
    }
    return false;
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
      print(e);
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
      print(e);
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
      if (respo.statusCode == 200) {
        debugPrint("saveFCM pass");
      }
    } catch (e) {
      print(e);
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
      if (respo.statusCode == 200) {
        debugPrint("removeFCM pass");
      }
    } catch (e) {
      print(e);
      debugPrint(fcmToken);
      debugPrint("REMOVE FCM  FAIL");
    }
    _notificationStatus = false;
  }
}
