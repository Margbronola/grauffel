import 'package:egczacademy/views/auth_wrapper/auth_wrapper_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import '../services/authentication_service.dart';
import '../views/login/login_view.dart';

@StackedApp(routes: [
  MaterialRoute(page: AuthWrapperView, initial: true),
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
])
class App {
  /** This class has no puporse besides housing the annotation that generates the required functionality **/
}
