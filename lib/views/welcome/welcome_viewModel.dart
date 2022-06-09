import 'package:egczacademy/app/app.router.dart';
import 'package:egczacademy/views/login/login_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../app/app.locator.dart';

class WelcomeViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();
  void goToLogin() {
    _navigationService.navigateWithTransition(LoginView(),
        transitionStyle: Transition.zoom);
  }
}
