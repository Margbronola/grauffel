import 'dart:convert';
import 'dart:io';

import 'package:egczacademy/models/user_model.dart';
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
        print("SERVER FAIL");
      }
    } catch (e) {
      print(e);
      print("FETCH USER FAIL");
    }
    return null;
  }

  Future<void> updateAvatar({XFile? image, required String token}) async {
    final bytes = File(image!.path).readAsBytesSync();
    String extension = File(image.path).path.split('/').last.split('.').last;
    String img64 = "data:image/$extension;base64,${base64Encode(bytes)}";
    print(img64);
    print("extension $extension");
    try {
      final respo =
          await http.post(Uri.parse("$urlApi/client/update-avatar"), body: {
        "avatar": img64
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
        print("SERVER FAIL");
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

    print(data);
    try {
      final respo = await http.post(Uri.parse("$urlApi/client/update-details"),
          body: data,
          headers: {
            "Accept": "application/json",
            "Authorization": "Bearer $token",
          });

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
        print("SERVER FAIL");
      }
    } catch (e) {
      print(e);
      print("UPDATE USER FAIL");
    }
  }
}
