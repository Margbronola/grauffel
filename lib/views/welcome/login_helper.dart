import 'dart:async';
import 'dart:io';

import 'package:egczacademy/services/firebase_auth_service.dart';
import 'package:egczacademy/services/sharedpref_service.dart';
import 'package:egczacademy/services/user_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../app/app.locator.dart';
import '../../services/authentication_service.dart';
import '../home/home_view.dart';
import '../shared/color.dart';

class LoginHelper {
  final AuthenticationService _authenticationService =
      locator<AuthenticationService>();
  final FireBaseAuthService _fireBaseAuthService =
      locator<FireBaseAuthService>();
  final NavigationService _navigationService = locator<NavigationService>();
  final UserService _userService = locator<UserService>();
  final SharedPrefService _sharedPrefService = locator<SharedPrefService>();

  static const String _deviceName = "mobile";
  static const String _userMapKey = "user";
  static const String _tokenMapKey = "token";

  void showFail() {
    Fluttertoast.showToast(
        msg: "Accès refusé",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.white.withOpacity(0.1),
        textColor: errorColor,
        fontSize: 16.0);
  }

  void goToHome() {
    _navigationService.navigateToView(const HomeView());
  }

  Future<void> login(
      {isTest = false, required String email, required String password}) async {
    if (!isTest) {
      //TODO: testRemove
      String testEmail = "john@gmail.com";
      String testPasswotd = "123123";
      await _fireBaseAuthService
          .signIn(
              email: isTest ? testEmail : email,
              password: isTest ? testPasswotd : password)
          .then((value) async {
        if (value != null) {
          await _authenticationService
              .login(firebase_token: value, device_name: _deviceName)
              .then((value) async {
            if (value != null) {
              _userService.updateUser(value[_userMapKey]);
              _userService.updateToken(value[_tokenMapKey]);
              print(value[_tokenMapKey]);
              print(value[_userMapKey]);
              await _sharedPrefService.saveToken(token: value[_tokenMapKey]);
              goToHome();
            } else {
              showFail();
            }
          });
        } else {
          showFail();
        }
      });
    }
  }

  Future<void> fbSignIn() async {
    try {
      final LoginResult result = await FacebookAuth.instance.login(
        permissions: ['public_profile', 'email'],
      );
      switch (result.status) {
        case LoginStatus.success:
          final facebookCredential =
              FacebookAuthProvider.credential(result.accessToken!.token);
          final authResult = await _fireBaseAuthService.firebaseAuth
              .signInWithCredential(facebookCredential);
          final firebaseUser = authResult.user;
          if (firebaseUser != null) {
            await _authenticationService
                .login(
                    firebase_token: await firebaseUser.getIdToken(),
                    device_name: _deviceName)
                .then((value) async {
              if (value != null) {
                _userService.updateUser(value[_userMapKey]);
                _userService.updateToken(value[_tokenMapKey]);
                print(value[_tokenMapKey]);
                print(value[_userMapKey]);
                await _sharedPrefService.saveToken(token: value[_tokenMapKey]);
                goToHome();
              } else {
                showFail();
              }
            });
          }
          return;
        case LoginStatus.cancelled:
          Fluttertoast.showToast(msg: "Connexion interrompue".toUpperCase());
          return;
        case LoginStatus.failed:
          Fluttertoast.showToast(msg: "Autorisation refusée".toUpperCase());
          return;
        default:
          return;
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Fluttertoast.showToast(msg: "Aucun utilisateur trouvé");
      } else if (e.code == 'wrong-password') {
        Fluttertoast.showToast(msg: "Mot de passe incorrect");
      } else if (e.code == "account-exists-with-different-credential") {
        Fluttertoast.showToast(
          msg: "Compte déjà utilisé, essayez une autre adresse e-mail",
        );
      } else {
        Fluttertoast.showToast(msg: e.code);
      }

      return;
    } on SocketException {
      Fluttertoast.showToast(msg: "Pas de connexion Internet");
      rethrow;
    } on HttpException {
      Fluttertoast.showToast(
          msg:
              "Une erreur s'est produite lors de l'exécution de cette opération");
      return;
    } on FormatException {
      Fluttertoast.showToast(msg: "Erreur de format");
      return;
    } on TimeoutException {
      Fluttertoast.showToast(msg: "Pas de connexion Internet : timeout");
      return;
    }
  }
}
