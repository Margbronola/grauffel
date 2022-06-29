import 'package:egczacademy/app/app.router.dart';
import 'package:egczacademy/services/authentication_service.dart';
import 'package:egczacademy/services/firebase_auth_service.dart';
import 'package:egczacademy/services/sharedpref_service.dart';
import 'package:egczacademy/services/user_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../app/app.locator.dart';

class SettingsViewModel extends BaseViewModel {
  final UserService _userService = locator<UserService>();
  final AuthenticationService _authenticationService =
      locator<AuthenticationService>();
  final NavigationService _navigationService = locator<NavigationService>();
  final FireBaseAuthService _fireBaseAuthService =
      locator<FireBaseAuthService>();
  final SharedPrefService _sharedPrefService = locator<SharedPrefService>();

  List<Country> countries = [
    Country(name: "Account"),
    Country(name: "Notificaton")
  ];

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
}

class Country {
  String name;
  Country({
    required this.name,
  });
}
