import 'dart:async';

import 'package:egczacademy/models/user_model.dart';
import 'package:egczacademy/services/authentication_service.dart';
import 'package:egczacademy/views/welcome/login_helper.dart';
import 'package:egczacademy/views/welcome/regsiter_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../app/app.locator.dart';

class WelcomeViewModel extends BaseViewModel with LoginHelper, RegisterHelper {
  final NavigationService _navigationService = locator<NavigationService>();
  final AuthenticationService _authenticationService =
      locator<AuthenticationService>();
  final DialogService _dialogService = locator<DialogService>();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final TextEditingController cpasswordController = TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();

  late final AnimationController controllerInputText;
  late final AnimationController controllerLogo;
  late final Animation<Offset> paddingBottom;
  late final Animation<Offset> offsetAnimation;
  late final Animation<Offset> offsetAnimation2;

  late FocusNode emailFocusNode;
  late FocusNode passwordFocusNode;
  late FocusNode cpasswordFocusNode;
  late FocusNode firstNameFocusNode;
  late FocusNode lastNameFocusNode;

  bool isLoginView = false;
  bool isRegisterView = false;
  bool showPassword = false;
  bool cshowPassword = false;

  bool keyBoardVisible = false;

  bool get isFocus =>
      emailFocusNode.hasFocus ||
      passwordFocusNode.hasFocus ||
      cpasswordFocusNode.hasFocus ||
      firstNameFocusNode.hasFocus ||
      firstNameFocusNode.hasFocus ||
      lastNameFocusNode.hasFocus;

  late StreamSubscription<bool> keyboardSubscription;

  String get btnText => isLoginView
      ? "se connecter".toUpperCase()
      : isRegisterView
          ? "S'inscrire".toUpperCase()
          : "J'AI UN COMPTE";

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    cpasswordController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();

    emailFocusNode.dispose();
    passwordFocusNode.dispose();
    cpasswordFocusNode.dispose();
    firstNameFocusNode.dispose();
    lastNameFocusNode.dispose();
    super.dispose();
  }

  void unFucos() {
    emailFocusNode.unfocus();
    passwordFocusNode.unfocus();
    cpasswordFocusNode.unfocus();
    firstNameFocusNode.unfocus();
    lastNameFocusNode.unfocus();
    clear();
  }

  void clear() {
    emailController.clear();
    passwordController.clear();
    cpasswordController.clear();
    firstNameController.clear();
    lastNameController.clear();
  }

  void init(TickerProvider vsync) {
    var keyboardVisibilityController = KeyboardVisibilityController();
    keyboardSubscription =
        keyboardVisibilityController.onChange.listen((bool visible) {
      keyBoardVisible = visible;
      notifyListeners();
    });

    emailFocusNode = FocusNode();
    passwordFocusNode = FocusNode();
    passwordFocusNode = FocusNode();
    cpasswordFocusNode = FocusNode();
    firstNameFocusNode = FocusNode();
    lastNameFocusNode = FocusNode();

    controllerInputText = AnimationController(
        duration: const Duration(milliseconds: 500), vsync: vsync);

    controllerLogo = AnimationController(
        duration: const Duration(milliseconds: 500), vsync: vsync);

    offsetAnimation = Tween<Offset>(
      begin: const Offset(50, 0.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: controllerInputText,
      curve: Interval(
        0.0,
        1.0,
        curve: Curves.ease,
      ),
    ));
    //slide animate
    offsetAnimation2 = Tween<Offset>(
      begin: const Offset(50, 0.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: controllerInputText,
      curve: Interval(
        0.500,
        1.0,
        curve: Curves.ease,
      ),
    ));
    //animate to top
    paddingBottom = Tween<Offset>(
      begin: Offset.zero,
      end: Offset(0.0, -3.h),
    ).animate(
      CurvedAnimation(
        parent: controllerLogo,
        curve: Interval(
          0.0,
          0.1,
          curve: Curves.ease,
        ),
      ),
    );
  }

  void animateToLogin() async {
    print("ANIMATELOGIN");
    if (isRegisterView) {
      await controllerInputText.reverse();
      isRegisterView = false;
      isLoginView = true;
      notifyListeners();
      await controllerInputText.forward();
    } else {
      await controllerLogo.forward();
      await controllerInputText.forward();
      isLoginView = true;
      notifyListeners();
    }
    if (isFocus) {
      unFucos();
    }
  }

  void animateToRegister() async {
    print("ANIMATEREGISTER");
    if (isLoginView) {
      controllerInputText.reverse().then((value) {
        isRegisterView = true;
        isLoginView = false;
        notifyListeners();
      }).then((value) async {
        await controllerInputText.forward();
        notifyListeners();
      });
    } else {
      isRegisterView = true;
      notifyListeners();
      await controllerLogo.forward();
      await controllerInputText.forward();
    }
    if (isFocus) {
      unFucos();
    }
  }

  void toggle({required bool cpass}) {
    if (cpass) {
      cshowPassword = !cshowPassword;
    } else {
      showPassword = !showPassword;
    }
    notifyListeners();
  }

  void loginButton() async {
    print("LOGIN");
    setBusy(true);
    await login(
        isTest: true,
        formKey: formKey,
        email: emailController.text,
        password: passwordController.text);

    notifyListeners();
  }

  void registerButton(UserModel userModel) async {
    print("REGISTER");
    setBusy(true);
    await register(formKey: formKey, user: userModel);
    setBusy(false);
  }
}
