import 'package:egczacademy/app/app.router.dart';
import 'package:egczacademy/services/authentication_service.dart';
import 'package:egczacademy/views/shared/color.dart';
import 'package:egczacademy/views/shared/widget/dialog/setup_dialog_ui.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../app/app.locator.dart';
import '../home/home.dart';

class WelcomeViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();
  final AuthenticationService _authenticationService =
      locator<AuthenticationService>();

  final DialogService _dialogService = locator<DialogService>();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  late final AnimationController controller;
  late final Animation<Offset> paddingBottom;
  late final Animation<Offset> offsetAnimation;
  late final Animation<Offset> offsetAnimation2;

  late FocusNode loginFocusNode;
  late FocusNode passwordFocusNode;

  bool isForward = false;
  String get btnText => isForward ? "Login" : "J'AI UN COMPTE";

  bool showPassword = false;
  void register() {}

  bool get isFocus => loginFocusNode.hasFocus || passwordFocusNode.hasFocus;

  void init(TickerProvider vsync) {
    loginFocusNode = FocusNode();
    passwordFocusNode = FocusNode();

    controller = AnimationController(
        duration: const Duration(milliseconds: 500), vsync: vsync);

    offsetAnimation = Tween<Offset>(
      begin: const Offset(50, 0.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: controller,
      curve: Interval(
        0.500,
        1.0,
        curve: Curves.ease,
      ),
    ));

    offsetAnimation2 = Tween<Offset>(
      begin: const Offset(50, 0.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: controller,
      curve: Interval(
        0.800,
        1.0,
        curve: Curves.ease,
      ),
    ));

    paddingBottom = Tween<Offset>(
      begin: Offset.zero,
      end: Offset(0.0, -2),
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(
          0.0,
          0.500,
          curve: Curves.ease,
        ),
      ),
    );
  }

  void play() {
    controller.forward().then((value) {
      isForward = true;
      notifyListeners();
    });
  }

  void reset() {
    controller.reverse().then((value) {
      isForward = false;
      notifyListeners();
    });
  }

  void toggle() {
    showPassword = !showPassword;

    notifyListeners();
  }

  Future<void> login() async {
    if (formKey.currentState!.validate() == true) {
      setBusy(true);
      _authenticationService
          .signIn(
              email: emailController.text, password: passwordController.text)!
          .then((value) {
        if (value) {
          _navigationService.navigateToView(Home());
        } else {
          Fluttertoast.showToast(
              msg: "Accès refusé",
              toastLength: Toast.LENGTH_LONG,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.white.withOpacity(0.1),
              textColor: errorColor,
              fontSize: 16.0);
        }
        setBusy(false);
      });
    }
  }

  void goToLogin() {
    // _navigationService.navigateTo(Routes.loginView);
  }
}
