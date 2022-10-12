import 'dart:convert';
import 'dart:io';

import 'package:egczacademy/models/transaction_model.dart';
import 'package:egczacademy/models/user_model.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
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
          print("FETCH USER PASS");
          return UserModel.fromJson(data);
        } catch (e) {
          print(e);
          print("FROMJSON FAIL");
        }
      } else {
        print("SERVER FAIL fetch user details");
      }
    } catch (e) {
      print(e);
      print("FETCH USER FAIL");
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
          print(data);

          print("CHANGE AVATAR");
        } catch (e) {
          print(e);
          print("CHANGE AVATAR FAIL");
        }
      } else {
        print("SERVER FAIL updateAvatar");
      }
    } catch (e) {
      print(e);
      print("CHANGE AVATAR FAIL");
    }
  }

  Future<void> updateDetails(
      {required UserModel userToEdit, required String token}) async {
    Map data = userToEdit.toJson();
    data.removeWhere(
      (key, value) => value == null,
    );
    print("DATA $data");
    try {
      final respo = await http.post(Uri.parse("$urlApi/client/update-details"),
          body: data['experience'],
          headers: {
            "Accept": "application/json",
            "Authorization": "Bearer $token",
          });
      print("STATUSCODE ${respo.statusCode}");
      if (respo.statusCode == 200) {
        var data = json.decode(respo.body);

        try {
          print(data);
          print("UPDATE USER PASS");
        } catch (e) {
          print(e);
          print("FROMJSON FAIL");
        }
      } else {
        print("SERVER FAILED updateDetails");
      }
    } catch (e) {
      print(e);
      print("UPDATE USER FAIL");
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
        var data = json.decode(respo.body);

        print("UPDATE PASSWORD PASS");
        return true;
      } else {
        print(respo.body);
        print("SERVER FAIL update password");
      }
    } catch (e) {
      print(e);
      print("UPDATE PASSWORD FAIL");
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
        print("UPDATE PASSWORD PASS");
        return transactions.map((e) => TransactionModel.fromJson(e)).toList();
      } else {
        print(respo.body);
        print("SERVER FAIL Fetch History");
      }
    } catch (e) {
      print(e);
      print("UPDATE PASSWORD FAIL");
    }
    return null;
  }

  bool _notificationStatus = false;
  bool get noticationStatus => _notificationStatus;

  set noticationStatus(bool value) => _notificationStatus = value;
  FirebaseMessaging messaging = FirebaseMessaging.instance;

  Future<void> saveFCM({
    required String token,
  }) async {
    var fcmToken = await messaging.getToken();
    print(fcmToken);
    print(token);
    try {
      final respo =
          await http.post(Uri.parse("$urlApi/client/save-fcm"), body: {
        "token": fcmToken,
      }, headers: {
        "Accept": "application/json",
        "Authorization": "Bearer $token",
      });
      var data = json.decode(respo.body);
      print("$data");
    } catch (e) {
      print(e);
      print("saveFCM FAIL");
    }
    _notificationStatus = true;
    print(noticationStatus);
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
      print("$data");
    } catch (e) {
      print(e);
      print("REMOVE FCM  FAIL");
    }
    _notificationStatus = false;
  }
}
