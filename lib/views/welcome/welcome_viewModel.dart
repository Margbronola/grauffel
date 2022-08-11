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

  final PageController pageController = PageController();

  double flexSize = 400;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController cpasswordController = TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();

  late final AnimationController controllerInputText;
  late final AnimationController controllerLogo;
  late final Animation<Offset> paddingBottom;
  late final Animation<Offset> offsetAnimation1;
  late final Animation<Offset> offsetAnimation2;
  late final Animation<Offset> offsetAnimation3;
  late final Animation<Offset> offsetAnimation4;
  late final Animation<Offset> offsetAnimation5;

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

  bool isPasswordFucos = false;
  bool isEmailFucos = false;

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

    pageController.dispose();
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

    passwordFocusNode.addListener(() {
      isPasswordFucos = passwordFocusNode.hasFocus;
      notifyListeners();
    });

    emailFocusNode.addListener(() {
      isEmailFucos = emailFocusNode.hasFocus;
      notifyListeners();
    });

    controllerInputText = AnimationController(
        duration: const Duration(milliseconds: 300), vsync: vsync);

    controllerLogo = AnimationController(
        duration: const Duration(milliseconds: 300), vsync: vsync);

    Animation<Offset> setOffSet({required double start, required double end}) =>
        Tween<Offset>(
          begin: const Offset(50, 0.0),
          end: Offset.zero,
        ).animate(CurvedAnimation(
          parent: controllerInputText,
          curve: Interval(
            start,
            end,
            curve: Curves.ease,
          ),
        ));

    offsetAnimation5 = setOffSet(start: 0.0, end: 0.2);
    offsetAnimation4 = setOffSet(start: 0.2, end: 0.4);
    offsetAnimation3 = setOffSet(start: 0.4, end: 0.6);
    offsetAnimation2 = setOffSet(start: 0.6, end: 0.8);
    offsetAnimation1 = setOffSet(start: 0.9, end: 1.0);

    //animate to top
    paddingBottom = Tween<Offset>(
      begin: Offset.zero,
      end: Offset(0.0, -3.h),
    ).animate(
      CurvedAnimation(
        parent: controllerLogo,
        curve: const Interval(
          0.0,
          0.1,
          curve: Curves.ease,
        ),
      ),
    );
  }

  void jumpToLogin() async {
    pageController.animateToPage(1,
        duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
    isLoginView = true;
    notifyListeners();
  }

  void back() async {
    pageController.animateToPage(0,
        duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
    isLoginView = false;
    notifyListeners();
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

  Future loginButton() async {
    print("login button");
    if (formKey.currentState!.validate()) {
      flexSize = 400;
      setBusy(true);
      await login(
          isTest: false,
          email: emailController.text,
          password: passwordController.text);
      // setBusy(false);
    } else {
      flexSize = 500;
      print("error");
    }
    notifyListeners();
  }

  void registerButton(UserModel userModel) async {
    print("REGISTER");
    setBusy(true);
    await register(formKey: formKey, user: userModel);
    setBusy(false);
  }
}
