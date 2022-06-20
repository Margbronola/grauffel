import 'package:egczacademy/services/authentication_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../app/app.locator.dart';

class SettingsViewModel extends BaseViewModel {
  final AuthenticationService _authenticationService =
      locator<AuthenticationService>();
  final NavigationService _navigationService = locator<NavigationService>();
  List<Country> countries = [
    Country(name: "Account"),
    Country(name: "Notificaton")
  ];

  void signOut() {
    print("signout");
    _authenticationService.logout();
    notifyListeners();
    _navigationService.back();
  }

  void showToken() async {
    String tokne = await _authenticationService.token;
    print(tokne);
  }
}

class Country {
  String name;
  Country({
    required this.name,
  });
}
