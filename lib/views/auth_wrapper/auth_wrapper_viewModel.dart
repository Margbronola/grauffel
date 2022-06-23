import 'package:egczacademy/services/firebase_auth_service.dart';
import 'package:stacked/stacked.dart';

import '../../app/app.locator.dart';

class AuthWrapperViewModel extends StreamViewModel<dynamic> {
  //Todo: may not work
  final FireBaseAuthService _authenticationService =
      locator<FireBaseAuthService>();

  @override
  // TODO: implement stream
  Stream get stream => _authenticationService.authStateChanges;
}
