import 'dart:convert';
import 'dart:io';

import 'package:egczacademy/models/user_model.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';

import '../app/global.dart';

class UserService {
  String? _token;
  UserModel? _user;

  set fetchToken(value) => _token = value;
  set fetchUser(value) => _user = value;

  String? get token => _token;
  UserModel? get user => _user;

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
          fetchToken = token;
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

  Future<void> updateAvatar(XFile? image) async {
    final bytes = File(image!.path).readAsBytesSync();

    String img64 = base64Encode(bytes);
    print(img64);
    // try {
    //   final respo =
    //       await http.post(Uri.parse("$url/client/update-avatar"),
    //         body: {"avatar" : },
    //        headers: {
    //     "Accept": "application/json",
    //     "Authorization": "Bearer $token",
    //   });

    //   if (respo.statusCode == 200) {
    //     var data = json.decode(respo.body);
    //     try {
    //       _user = UserModel.fromJson(data);
    //       fetchToken = token;
    //       print("FETCH USER PASS");
    //     } catch (e) {
    //       print(e);
    //       print("FROMJSON FAIL");
    //     }
    //   } else {
    //     print("SERVER FAIL");
    //   }
    // } catch (e) {
    //   print(e);
    //   print("FETCH USER FAIL");
    // }
  }
}
