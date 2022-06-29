import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefService {
  Future<void> initializePrefs() async {
    print("PREFS SET");
    prefs = await SharedPreferences.getInstance();
  }

  late final SharedPreferences? prefs;
  static const String _token = "TOKEN";

  String get prefsToken => prefs!.getString(_token)!;
  bool get hasKeyToken => prefs!.containsKey(_token);

  Future saveToken({required String token}) async {
    await prefs!.setString(_token, token);
  }

  clearAllPrefs() {
    prefs!.clear();
    print("CLEAR PREFS");
  }
}
