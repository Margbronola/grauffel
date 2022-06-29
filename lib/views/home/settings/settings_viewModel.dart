import 'package:egczacademy/app/app.router.dart';
import 'package:egczacademy/services/authentication_service.dart';
import 'package:egczacademy/services/firebase_auth_service.dart';
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

  List<Country> countries = [
    Country(name: "Account"),
    Country(name: "Notificaton")
  ];

  void signOut() async {
    print("signout firebase");
    setBusy(true);
    await _fireBaseAuthService.logout();
    await _authenticationService.logout(token: _userService.token);
    setBusy(false);
    _navigationService.pushNamedAndRemoveUntil(Routes.welcomeView);
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
