import 'package:egczacademy/app/app.router.dart';
import 'package:egczacademy/services/authentication_service.dart';
import 'package:egczacademy/services/firebase_auth_service.dart';
import 'package:egczacademy/services/sharedpref_service.dart';
import 'package:egczacademy/services/user_service.dart';
import 'package:egczacademy/views/history/transaction_view.dart';
import 'package:egczacademy/views/home/settings/notification/notification_settings_view.dart';
import 'package:egczacademy/views/shared/widget/dialog/setup_dialog_ui.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../app/app.locator.dart';

class SettingsViewModel extends BaseViewModel {
  final UserService _userService = locator<UserService>();
  final AuthenticationService _authenticationService =
      locator<AuthenticationService>();
  final NavigationService _navigationService = locator<NavigationService>();
  final FireBaseAuthService _fireBaseAuthService =
      locator<FireBaseAuthService>();
  final SharedPrefService _sharedPrefService = locator<SharedPrefService>();
  final DialogService _dialogService = locator<DialogService>();

  final Uri _url = Uri.parse("https://www.eg-czacademy.com/fr/condition");

  void showChangeDialog() async {
    var response =
        await _dialogService.showCustomDialog(variant: DialogType.changePass);

    if (response!.confirmed) {
      print("updated");
    } else {
      print("cancel");
    }
  }

  void signOut() async {
    print("signout firebase");
    setBusy(true);
    print(_userService.token);
    await _fireBaseAuthService.logout();
    await _authenticationService.logout(token: _sharedPrefService.prefsToken);
    _sharedPrefService.clearAllPrefs();

    _navigationService
        .pushNamedAndRemoveUntil(Routes.welcomeView)!
        .whenComplete(() => setBusy(false));
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
    var response = await _dialogService.showCustomDialog(
        variant: DialogType.confirmation,
        title: "Êtes vous sûr de vouloir supprimer votre compte ?",
        mainButtonTitle: "Confirmer",
        additionalButtonTitle: "Annuler");

    if (response!.confirmed) {
      print("Confirm");
    } else {
      // _navigationService.back();
    }
  }

  Future<void> launchUrlTerm() async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }
}
