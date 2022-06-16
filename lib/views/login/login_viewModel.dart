import 'package:egczacademy/views/home/home.dart';
import 'package:egczacademy/views/login/login_view.dart';
import 'package:egczacademy/views/reservation/reservation_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../app/app.locator.dart';

class LoginViewModel extends BaseViewModel {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  // final ApiClient _apiClient = ApiClient();
  bool showPassword = false;
  // final AuthService _authService = locator<AuthService>();
  final NavigationService _navigationService = locator<NavigationService>();

  void register() {
    // _navigationService.navigateTo(Routes.registerView);
  }

  void toggle() {
    showPassword = !showPassword;
    notifyListeners();
  }

  Future<void> login() async {
    _navigationService.navigateToView(Home());
  }
}
