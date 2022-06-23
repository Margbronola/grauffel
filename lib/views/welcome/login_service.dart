import 'package:egczacademy/services/firebase_auth_service.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../app/app.locator.dart';
import '../../services/authentication_service.dart';
import '../home/home.dart';
import '../shared/color.dart';

class LoginService {
  final AuthenticationService _authenticationService =
      locator<AuthenticationService>();
  final FireBaseAuthService _fireBaseAuthService =
      locator<FireBaseAuthService>();
  final NavigationService _navigationService = locator<NavigationService>();
  String deviceName = "mobile";

  void showFail() {
    Fluttertoast.showToast(
        msg: "Accès refusé",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.white.withOpacity(0.1),
        textColor: errorColor,
        fontSize: 16.0);
  }

  void goToLogin() {
    _navigationService.navigateToView(Home());
  }

  Future<void> login(
      {required GlobalKey<FormState> formKey,
      required String email,
      required String password}) async {
    if (formKey.currentState!.validate() == true) {
      _fireBaseAuthService
          .signIn(email: email, password: password)
          .then((value) async {
        if (value) {
          _authenticationService
              .login(
                  firebase_token: await _fireBaseAuthService.token,
                  device_name: deviceName)
              .then((value) {
            if (value) {
              goToLogin();
            } else {
              showFail();
            }
          });
          goToLogin();
        } else {
          showFail();
        }
      });
    }
  }
}
