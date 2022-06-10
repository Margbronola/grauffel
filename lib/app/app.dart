import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import '../views/login/login_view.dart';
import '../views/welcome/welcome_view.dart';

@StackedApp(routes: [
  MaterialRoute(page: WelcomeView, initial: true),
  MaterialRoute(page: LoginView)
], dependencies: [
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
