import 'package:egczacademy/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../app/app.locator.dart';
import '../../services/authentication_service.dart';
import '../home/home.dart';
import '../shared/color.dart';

final AuthenticationService _authenticationService =
    locator<AuthenticationService>();
final NavigationService _navigationService = locator<NavigationService>();

void showFail() {
  Fluttertoast.showToast(
      msg: "Regsiter fail",
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.white.withOpacity(0.1),
      textColor: errorColor,
      fontSize: 16.0);
}

class RegisterService {
  Future<void> register(
      {required GlobalKey<FormState> formKey, required UserModel user}) async {
    if (formKey.currentState!.validate() == true) {
      _authenticationService.register(userModel: user).then((value) {
        if (value) {
          _navigationService.navigateToView(Home());
        } else {
          showFail();
        }
      });
    }
  }
}
