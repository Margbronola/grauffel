import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../../app/app.locator.dart';
import '../../../../services/user_api_service.dart';
import '../../../../services/user_service.dart';

class ChangePasswordViewModel extends BaseViewModel {
  final UserAPIService userAPIService = locator<UserAPIService>();
  final UserService userService = locator<UserService>();
  FocusNode passwordFocusNode = FocusNode();
  FocusNode newPassFocusNode = FocusNode();
  FocusNode cPassFocusNode = FocusNode();
  TextEditingController passwordController = TextEditingController();
  TextEditingController newPassController = TextEditingController();
  TextEditingController cPassController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool showPassword = false;
  bool showNewPassword = false;
  bool showCPassword = false;

  void toggle(int index) {
    switch (index) {
      case 0:
        showPassword = !showPassword;

        break;
      case 1:
        showNewPassword = !showNewPassword;

        break;
      case 2:
        showCPassword = !showCPassword;

        break;
      default:
    }
    notifyListeners();
  }
}
