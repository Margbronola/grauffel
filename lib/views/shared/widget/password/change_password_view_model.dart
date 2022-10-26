import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../../app/app.locator.dart';
import '../../../../services/user_api_service.dart';
import '../../../../services/user_service.dart';
import '../dialog/setup_dialog_ui.dart';

class ChangePasswordViewModel extends BaseViewModel {
  final UserAPIService userAPIService = locator<UserAPIService>();
  final UserService userService = locator<UserService>();
  final DialogService _dialogService = locator<DialogService>();
  final NavigationService _navigationService = locator<NavigationService>();
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
        notifyListeners();
        break;
      case 1:
        showNewPassword = !showNewPassword;
        notifyListeners();

        break;
      case 2:
        showCPassword = !showCPassword;

        notifyListeners();
        break;
      default:
    }
  }

  void showDialogSuccess() async {
    var response = await _dialogService.showCustomDialog(
        title: "Succès de",
        description: "Mise à jour du mot de passe.",
        mainButtonTitle: "Confirmer",
        variant: DialogType.confirmation);
    _navigationService.back();
  }

  void showDialogFail() async {
    var response = await _dialogService.showCustomDialog(
        title: "Avertissement",
        additionalButtonTitle: "warning",
        description: "Mauvais mot de passe!",
        mainButtonTitle: "Confirmer",
        variant: DialogType.confirmation);
  }
}
