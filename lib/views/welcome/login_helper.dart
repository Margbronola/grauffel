// ignore_for_file: unused_field

import 'dart:async';
import 'dart:io';

import 'package:apple_sign_in_safety/apple_sign_in.dart';
import 'package:egczacademy/services/firebase_auth_service.dart';
import 'package:egczacademy/services/sharedpref_service.dart';
import 'package:egczacademy/views/welcome/welcome_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../app/app.locator.dart';
import '../../services/authentication_service.dart';
import '../shared/color.dart';

class LoginHelper {
  final AuthenticationService _authenticationService =
      locator<AuthenticationService>();
  final FireBaseAuthService _fireBaseAuthService =
      locator<FireBaseAuthService>();
  final NavigationService _navigationService = locator<NavigationService>();

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
    _navigationService.pushNamedAndRemoveUntil("/home-view");
  }

  Future<void> login({
    required String email,
    required String password,
  }) async {
    await _fireBaseAuthService
        .signIn(email: email, password: password)
        .then((value) async {
      debugPrint(value);
      debugPrint("data jere");
      if (value != null) {
        await _authenticationService
            .login(firebaseToken: value, deviceName: _deviceName)
            .then((value) async {
          debugPrint("LOGIN DATA $value");
          if (value != null) {
            await _sharedPrefService.saveToken(token: value);
            goToHome();
          } else {
            showFail();
            _navigationService.navigateToView(const WelcomeView(),
                popGesture: true);
          }
        });
      } else {
        showFail();
        _navigationService.navigateToView(const WelcomeView());
      }
    });
  }

  Future<void> appleSignIn() async {
    try {
      final result = await AppleSignIn.performRequests([
        const AppleIdRequest(requestedScopes: [Scope.email, Scope.fullName])
      ]);
      switch (result.status) {
        case AuthorizationStatus.authorized:
          final appleIdCredential = result.credential;
          final oAuthProvider = OAuthProvider("apple.com");

          final credential = oAuthProvider.credential(
            idToken: String.fromCharCodes(
                appleIdCredential?.identityToken as Iterable<int>),
            accessToken: String.fromCharCodes(
                appleIdCredential?.authorizationCode as Iterable<int>),
          );
          final authResult = await _fireBaseAuthService.firebaseAuth
              .signInWithCredential(credential);
          final firebaseUser = authResult.user;
          if (firebaseUser != null) {
            await _authenticationService
                .login(
                    firebaseToken: firebaseUser.getIdToken().toString(),
                    deviceName: _deviceName)
                .then((value) async {
              if (value != null) {
                await _sharedPrefService.saveToken(token: value);
                goToHome();
              } else {
                showFail();
              }
            });
          }

          return;
        case AuthorizationStatus.error:
          Fluttertoast.showToast(msg: "${result.error}");
          return;
        case AuthorizationStatus.cancelled:
          Fluttertoast.showToast(msg: "CONNEXION ABANDONNÉE PAR L'UTILISATEUR");
          return;
        default:
          return;
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Fluttertoast.showToast(msg: "Aucun utilisateur trouvé");
      } else if (e.code == 'wrong-password') {
        Fluttertoast.showToast(msg: "Mot de passe incorrect");
      }
      return;
    } on SocketException {
      Fluttertoast.showToast(msg: "Pas de connexion Internet");
      return;
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

  Future<void> fbSignIn() async {
    try {
      final LoginResult result = await FacebookAuth.instance.login(
        permissions: ['email', 'public_profile'],
      );
      print("SUMULOD DIDI");
      switch (result.status) {
        case LoginStatus.success:
          final facebookCredential =
              FacebookAuthProvider.credential(result.accessToken!.token);
          final authResult = await _fireBaseAuthService.firebaseAuth
              .signInWithCredential(facebookCredential);
          print("AUTH RESULT: $authResult");
          final firebaseUser = authResult.user;
          if (firebaseUser != null) {
            await _authenticationService
                .login(
                    firebaseToken: firebaseUser.getIdToken().toString(),
                    deviceName: _deviceName)
                .then((value) async {
              if (value != null) {
                await _sharedPrefService.saveToken(token: value);
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
