import 'package:shared_preferences/shared_preferences.dart';

class DataCacher {
  DataCacher._singleton();
  static DataCacher get _instance => DataCacher._singleton();
  static late final SharedPreferences _sharedPreferences;
  static DataCacher get instance => _instance;

  Future<void> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  set token(String? token) {
    _sharedPreferences.setString("accesstoken", token!);
  }

  String? get token => _sharedPreferences.getString('accesstoken');

  Future<void> deleteToken() async {
    await _sharedPreferences.remove('accesstoken');
  }

  set fcmtoken(String? fcmtoken) {
    _sharedPreferences.setString("fcmtoken", fcmtoken!);
  }

  String? get fcmtoken => _sharedPreferences.getString('fcmtoken');

  Future<void> deleteFcmToken() async {
    await _sharedPreferences.remove('fcmtoken');
  }
}
