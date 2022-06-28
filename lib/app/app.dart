import 'package:egczacademy/services/firebase_auth_service.dart';
import 'package:egczacademy/views/auth_wrapper/auth_wrapper_view.dart';
import 'package:egczacademy/views/welcome/welcome_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import '../services/authentication_service.dart';

@StackedApp(routes: [
  MaterialRoute(page: WelcomeView, initial: true),
  // MaterialRoute(page: LoginView)
], dependencies: [
  LazySingleton(
    classType: AuthenticationService,
  ),
  LazySingleton(
    classType: NavigationService,
  ),
  LazySingleton(
    classType: DialogService,
  ),
  LazySingleton(
    classType: FireBaseAuthService,
  ),
])
class App {
  /** This class has no puporse besides housing the annotation that generates the required functionality **/
}
