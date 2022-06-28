import 'package:egczacademy/models/user_model.dart';
import 'package:egczacademy/services/authentication_service.dart';
import 'package:egczacademy/views/welcome/login_service.dart';
import 'package:egczacademy/views/welcome/regsiter_service.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../app/app.locator.dart';

class WelcomeViewModel extends BaseViewModel
    with LoginService, RegisterService {
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

  late final AnimationController controller_inputText;
  late final AnimationController controller_logo;
  late final Animation<Offset> paddingBottom;
  late final Animation<Offset> offsetAnimation;
  late final Animation<Offset> offsetAnimation2;

  late FocusNode loginFocusNode;
  late FocusNode passwordFocusNode;
  late FocusNode cpasswordFocusNode;
  late FocusNode firstNameFocusNode;
  late FocusNode lastNameFocusNode;

  bool isLoginView = false;
  bool isRegisterView = false;
  bool showPassword = false;
  bool cshowPassword = false;

  String get btnText => isLoginView
      ? "Login"
      : isRegisterView
          ? "Register"
          : "J'AI UN COMPTE";

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    cpasswordController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();

    loginFocusNode.dispose();
    passwordFocusNode.dispose();
    cpasswordFocusNode.dispose();
    firstNameFocusNode.dispose();
    lastNameFocusNode.dispose();

    super.dispose();
  }

  void unFucos() {
    loginFocusNode.unfocus();
    passwordFocusNode.unfocus();
    cpasswordFocusNode.unfocus();
    firstNameFocusNode.unfocus();
    lastNameFocusNode.unfocus();

    emailController.clear();
    passwordController.clear();
    cpasswordController.clear();
    firstNameController.clear();
    lastNameController.clear();
  }

  void init(TickerProvider vsync) {
    loginFocusNode = FocusNode();
    passwordFocusNode = FocusNode();
    loginFocusNode = FocusNode();
    passwordFocusNode = FocusNode();
    cpasswordFocusNode = FocusNode();
    firstNameFocusNode = FocusNode();
    lastNameFocusNode = FocusNode();

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
      end: Offset(0.0, -3),
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

  void goToLogin() async {
    unFucos();
    if (isRegisterView) {
      await controller_inputText.reverse();
      isRegisterView = false;
      isLoginView = true;
      notifyListeners();
      await controller_inputText.forward();
    } else {
      isLoginView = true;
      notifyListeners();
      await controller_logo.forward();
      await controller_inputText.forward();
    }
  }

  void gotToRegister() async {
    unFucos();
    if (isLoginView) {
      controller_inputText.reverse().then((value) {
        isRegisterView = true;
        isLoginView = false;
        notifyListeners();
      }).then((value) async {
        await controller_inputText.forward();
        print("forward register");
        notifyListeners();
      });
    } else {
      isRegisterView = true;
      notifyListeners();
      await controller_logo.forward();
      await controller_inputText.forward();
    }
  }

  // void reset() async {
  //   await controller_inputText.reverse().then((value) {
  //     controller_logo.reverse();
  //     isForward = false;
  //     isRegisterView = false;
  //     notifyListeners();
  //   });
  // }

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
        formKey: formKey,
        email: emailController.text,
        password: passwordController.text);
    setBusy(false);
  }

  void registerButton(UserModel userModel) async {
    print("REGISTER");
    setBusy(true);
    await register(formKey: formKey, user: userModel);
    setBusy(false);
  }
}
