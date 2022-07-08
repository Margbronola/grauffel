import 'package:egczacademy/app/app.router.dart';
import 'package:egczacademy/services/sharedpref_service.dart';
import 'package:egczacademy/services/user_service.dart';
import 'package:egczacademy/views/home/home_view.dart';
import 'package:egczacademy/views/welcome/welcome_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class SplashViewModel extends BaseViewModel {
  final SharedPrefService _sharedPrefService = locator<SharedPrefService>();
  final NavigationService _navigationService = locator<NavigationService>();
  final UserService _userService = locator<UserService>();
  init() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      print("HASKEY ${_sharedPrefService.hasKeyToken}");
      if (_sharedPrefService.hasKeyToken) {
        print("FETCHING");

        await _userService.fethUserDetailsApi(
            token: _sharedPrefService.prefsToken);
        _navigationService.navigateTo(Routes.homeView);
      } else {
        _navigationService.navigateTo(Routes.welcomeView);
      }
    });
  }
}
