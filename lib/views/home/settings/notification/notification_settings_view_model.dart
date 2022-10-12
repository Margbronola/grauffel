import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

import '../../../../app/app.locator.dart';
import '../../../../services/user_api_service.dart';
import '../../../../services/user_service.dart';

class NotificationSettingsViewModel extends BaseViewModel {
  final UserAPIService _userAPIService = locator<UserAPIService>();
  final UserService _userService = locator<UserService>();
  FirebaseMessaging messaging = FirebaseMessaging.instance;
  bool notificationOnn = false;

  void init() {
    notificationOnn = _userAPIService.notificationStatus;
    debugPrint("NotificationStatus: $notificationOnn");
    notifyListeners();
  }

  void toggleNotificationOnn(bool? value) async {
    debugPrint("TOGGLED: $value");
    if (value != null) {
      if (value) {
        notificationOnn = value;

        _userAPIService.saveFCM(
          token: _userService.token!,
        );
        notifyListeners();
      } else {
        _userAPIService.removeFCMToken(
          token: _userService.token!,
        );
        notifyListeners();
      }
    }
  }
}
