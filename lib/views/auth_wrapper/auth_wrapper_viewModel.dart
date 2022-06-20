import 'package:egczacademy/services/authentication_service.dart';
import 'package:stacked/stacked.dart';

import '../../app/app.locator.dart';

class AuthWrapperViewModel extends StreamViewModel<dynamic> {
  final AuthenticationService _authenticationService =
      locator<AuthenticationService>();

  @override
  // TODO: implement stream
  Stream get stream => _authenticationService.authStateChanges;
}
