import 'package:egczacademy/app/app.router.dart';
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
      print("HASKEY ${_sharedPrefService.hasKeyToken}");
      if (_sharedPrefService.hasKeyToken) {
        print("FETCHING");

        _userService.updateToken(_sharedPrefService.prefsToken);
        _userService.updateUser(await _userAPIService.fethUserDetailsApi(
            token: _sharedPrefService.prefsToken));

        _navigationService.navigateTo(Routes.homeView);
      } else {
        _navigationService.navigateTo(Routes.welcomeView);
      }
    });
  }
}
