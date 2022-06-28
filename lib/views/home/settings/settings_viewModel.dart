import 'package:egczacademy/services/authentication_service.dart';
import 'package:egczacademy/services/firebase_auth_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../app/app.locator.dart';

class SettingsViewModel extends BaseViewModel {
  final AuthenticationService _authenticationService =
      locator<AuthenticationService>();
  final NavigationService _navigationService = locator<NavigationService>();
  final FireBaseAuthService _fireBaseAuthService =
      locator<FireBaseAuthService>();
  List<Country> countries = [
    Country(name: "Account"),
    Country(name: "Notificaton")
  ];

  void signOut() {
    print("signout firebase");
    _fireBaseAuthService.logout();
    notifyListeners();
    _navigationService.back();
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
