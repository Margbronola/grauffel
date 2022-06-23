import 'package:egczacademy/services/authentication_service.dart';
import 'package:egczacademy/views/shared/color.dart';
import 'package:egczacademy/views/welcome/login_service.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../app/app.locator.dart';
import '../home/home.dart';

class WelcomeViewModel extends BaseViewModel with LoginService {
  final NavigationService _navigationService = locator<NavigationService>();
  final AuthenticationService _authenticationService =
      locator<AuthenticationService>();
  final DialogService _dialogService = locator<DialogService>();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  late final AnimationController controller_inputText;
  late final AnimationController controller_logo;
  late final Animation<Offset> paddingBottom;
  late final Animation<Offset> offsetAnimation;
  late final Animation<Offset> offsetAnimation2;
  late FocusNode loginFocusNode;
  late FocusNode passwordFocusNode;

  bool isForward = false;
  String get btnText => isForward ? "Login" : "J'AI UN COMPTE";

  bool showPassword = false;
  bool get isFocus => loginFocusNode.hasFocus || passwordFocusNode.hasFocus;

  void init(TickerProvider vsync) {
    loginFocusNode = FocusNode();
    passwordFocusNode = FocusNode();

    controller_inputText = AnimationController(
        duration: const Duration(milliseconds: 500), vsync: vsync);

    controller_logo = AnimationController(
        duration: const Duration(milliseconds: 200), vsync: vsync);

    offsetAnimation = Tween<Offset>(
      begin: const Offset(50, 0.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: controller_inputText,
      curve: Interval(
        0.0,
        1.0,
        curve: Curves.ease,
      ),
    ));

    offsetAnimation2 = Tween<Offset>(
      begin: const Offset(50, 0.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: controller_inputText,
      curve: Interval(
        0.500,
        1.0,
        curve: Curves.ease,
      ),
    ));

    paddingBottom = Tween<Offset>(
      begin: Offset.zero,
      end: Offset(0.0, -2),
    ).animate(
      CurvedAnimation(
        parent: controller_logo,
        curve: Interval(
          0.0,
          0.1,
          curve: Curves.ease,
        ),
      ),
    );
  }

  void play() async {
    await controller_logo.forward();
    await controller_inputText.forward();
    isForward = true;
    notifyListeners();
  }

  void reset() {
    controller_inputText.reverse().then((value) {
      controller_logo.reverse();
      isForward = false;
      notifyListeners();
    });
  }

  void toggle() {
    showPassword = !showPassword;
    notifyListeners();
  }

  void loginButton() async {
    setBusy(true);
    await login(
        formKey: formKey,
        email: emailController.text,
        password: passwordController.text);
    setBusy(false);
  }

  void registerButton() {}
}
