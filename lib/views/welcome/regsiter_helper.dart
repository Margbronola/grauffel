import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../shared/color.dart';

class RegisterHelper {
  void showFail() {
    Fluttertoast.showToast(
        msg: "Échec de la connexion",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.white.withOpacity(0.1),
        textColor: errorColor,
        fontSize: 16.0);
  }

  // Future<void> register(
  //     {required GlobalKey<FormState> formKey, required UserModel user}) async {
  //   if (formKey.currentState!.validate() == true) {
  //     debugPrint("You can register now");
  //     // _authenticationService.register(userModel: user).then((value) {
  //     //   if (value) {
  //     //     _navigationService.navigateToView(Home());
  //     //   } else {
  //     //     showFail();
  //     //   }
  //     // });
  //   }
  // }
}
