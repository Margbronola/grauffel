import 'dart:async';
import 'package:egczacademy/views/welcome/login_helper.dart';
import 'package:egczacademy/views/welcome/regsiter_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';

class WelcomeViewModel extends BaseViewModel with LoginHelper, RegisterHelper {
  ScrollController scrollController = ScrollController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final PageController pageController = PageController();

  double flexSize = 440;

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

    scrollController.addListener(() {
      debugPrint(scrollController.offset.toString());
    });

    emailFocusNode = FocusNode();
    passwordFocusNode = FocusNode();
    passwordFocusNode = FocusNode();
    cpasswordFocusNode = FocusNode();
    firstNameFocusNode = FocusNode();
    lastNameFocusNode = FocusNode();

    passwordFocusNode.addListener(() {
      isPasswordFucos = passwordFocusNode.hasFocus;
      if (passwordFocusNode.hasFocus) {
        Future.delayed(const Duration(milliseconds: 600), () {
          scrollController.animateTo(255,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeIn);
        });
      }
      notifyListeners();
    });

    emailFocusNode.addListener(() {
      isEmailFucos = emailFocusNode.hasFocus;
      if (emailFocusNode.hasFocus) {
        Future.delayed(const Duration(milliseconds: 500), () {
          scrollController.animateTo(235,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeIn);
        });
      }
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
    debugPrint("ANIMATEREGISTER");
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
    debugPrint("login button");
    if (formKey.currentState!.validate()) {
      flexSize = 440;
      setBusy(true);
      await login(
          email: emailController.text, password: passwordController.text);
      setBusy(false);
    } else {
      flexSize = 540;
      debugPrint("error");
    }
    notifyListeners();
  }

  // void registerButton(UserModel userModel) async {
  //   debugPrint("REGISTER");
  //   setBusy(true);
  //   await register(formKey: formKey, user: userModel);
  //   setBusy(false);
  // }
}
