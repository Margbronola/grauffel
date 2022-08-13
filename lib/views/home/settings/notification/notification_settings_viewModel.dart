import 'package:stacked/stacked.dart';

class NotificationSettingsViewModel extends BaseViewModel {
  bool notificationOnn = false;

  void toggleNotificationOnn(bool? value) {
    notificationOnn = value!;
    notifyListeners();
  }
}
