// ignore_for_file: avoid_print

import 'package:egczacademy/app/app.router.dart';
import 'package:egczacademy/models/user_model.dart';
import 'package:egczacademy/services/sharedpref_service.dart';
import 'package:egczacademy/services/user_api_service.dart';
import 'package:egczacademy/services/user_service.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class SplashViewModel extends BaseViewModel {
  final SharedPrefService _sharedPrefService = locator<SharedPrefService>();
  final NavigationService _navigationService = locator<NavigationService>();
  final UserAPIService _userAPIService = locator<UserAPIService>();
  final UserService _userService = locator<UserService>();

  init() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      // print("HASKEY ${_sharedPrefService.hasKeyToken}");
      // print("TOKEN: ${_sharedPrefService.prefsToken}");
      if (_sharedPrefService.hasKeyToken) {
        print("sumulod didi sa if");
        UserModel? user = await _userAPIService.fethUserDetailsApi(
            token: _sharedPrefService.prefsToken);
        print("USER: $user");
        if (user != null) {
          _userService.updateUser(user);
          _userService.updateToken(_sharedPrefService.prefsToken);
          _navigationService.pushNamedAndRemoveUntil(Routes.homeView);
        } else {
          _navigationService.pushNamedAndRemoveUntil(Routes.welcomeView);
        }
      } else {
        print("sumulod didi sa else");
        _navigationService.pushNamedAndRemoveUntil(Routes.welcomeView);
      }
    });
  }
}
