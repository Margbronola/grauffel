import 'package:egczacademy/services/authentication_service.dart';
import 'package:egczacademy/services/user_api_service.dart';
import 'package:egczacademy/services/user_service.dart';
import 'package:egczacademy/views/history/transaction_view.dart';
import 'package:egczacademy/views/home/settings/notification/notification_settings_view.dart';
import 'package:egczacademy/views/shared/widget/dialog/setup_dialog_ui.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../app/app.locator.dart';

class SettingsViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  final DialogService _dialogService = locator<DialogService>();

  final UserAPIService _userAPIService = locator<UserAPIService>();
  final UserService _userService = locator<UserService>();
  final AuthenticationService _authenticationService =
      locator<AuthenticationService>();

  final Uri _url = Uri.parse("https://www.eg-czacademy.com/fr/condition");

  void showChangeDialog() async {
    var response =
        await _dialogService.showCustomDialog(variant: DialogType.changePass);

    if (response!.confirmed) {
      debugPrint("updated");
    } else {
      debugPrint("cancel");
    }
  }

  void showToken() async {
    // String tokne = await _authenticationService.token;
    // print(tokne);
  }

  void goToHistory() {
    _navigationService.navigateToView(const TransactionView());
  }

  void goToNotificationSettings() {
    _navigationService.navigateToView(const NotificationSettingsView());
  }

  void deleteAccount() async {
    setBusy(true);
    var response = await _dialogService.showCustomDialog(
        title: "Supprimer le compte",
        additionalButtonTitle: "warning",
        description: "Êtes vous sûr de vouloir supprimer votre compte ?",
        mainButtonTitle: "Confirmer",
        secondaryButtonTitle: "Annuler",
        variant: DialogType.confirmation);

    if (response!.confirmed) {
      bool deleted =
          await _userAPIService.deleteAccount(token: _userService.token!);

      if (deleted) {
        _authenticationService.logout(token: _userService.token!);
      }
    } else {
      // _navigationService.back();
    }
    setBusy(false);
  }

  Future<void> launchUrlTerm() async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }
}
