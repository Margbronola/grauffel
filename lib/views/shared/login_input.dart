import 'package:egczacademy/views/shared/ui_helper.dart';
import 'package:egczacademy/views/shared/validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../welcome/welcome_viewModel.dart';
import 'color.dart';
import 'customButton.dart';

class LoginInput extends StatelessWidget {
  final WelcomeViewModel model;
  const LoginInput({
    Key? key,
    required this.model,
  }) : super(key: key);
  //TODO: error login

  @override
  Widget build(BuildContext context) {
    return model.isBusy
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : Container(
            width: 354.w,
            color: kcWhite,
            padding: EdgeInsets.all(30.w),
            child: Form(
              key: model.formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextFormField(
                    cursorColor: Colors.black,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    style: const TextStyle(
                        fontFamily: 'ProductSans',
                        color: Colors.black,
                        letterSpacing: 1.3,
                        fontWeight: FontWeight.w500),
                    focusNode: model.emailFocusNode,
                    controller: model.emailController,
                    validator: (value) {
                      return Validator.validateEmail(value ?? "");
                    },
                    decoration: InputDecoration(
                      label: RichText(
                          text: TextSpan(
                              text: 'Adresse mail',
                              style: TextStyle(
                                  fontFamily: 'ProductSans',
                                  color: model.isEmailFucos
                                      ? Colors.grey
                                      : Colors.black,
                                  letterSpacing: 1.3,
                                  fontWeight: FontWeight.w700),
                              children: const [
                            TextSpan(
                                text: ' *',
                                style: TextStyle(
                                  color: buttonColor,
                                ))
                          ])),
                      fillColor: Colors.black,
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      hintStyle: const TextStyle(color: backgroundColor),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: backgroundColor),
                      ),
                      isDense: true,
                    ),
                  ),
                  verticalSpaceSmall(),
                  TextFormField(
                    cursorColor: Colors.black,
                    onFieldSubmitted: (String text) async {
                      print("login");
                      await model.loginButton();
                    },
                    focusNode: model.passwordFocusNode,
                    style: const TextStyle(
                        fontFamily: 'ProductSans',
                        color: Colors.black,
                        letterSpacing: 1.3,
                        fontWeight: FontWeight.w500),
                    obscureText: !model.showPassword,
                    controller: model.passwordController,
                    validator: (value) {
                      return Validator.validatePassword(value ?? "");
                    },
                    decoration: InputDecoration(
                      label: RichText(
                          text: TextSpan(
                              text: 'Mot de passe',
                              style: TextStyle(
                                  fontFamily: 'ProductSans',
                                  color: model.isPasswordFucos
                                      ? Colors.grey
                                      : Colors.black,
                                  letterSpacing: 1.3,
                                  fontWeight: FontWeight.w700),
                              children: const [
                            TextSpan(
                                text: ' *',
                                style: TextStyle(
                                  color: buttonColor,
                                ))
                          ])),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusColor: Colors.grey,
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: backgroundColor),
                      ),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          model.toggle(cpass: false);
                        },
                        child: Icon(
                          model.showPassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.grey,
                        ),
                      ),
                      isDense: true,
                    ),
                  ),
                  verticalSpaceLarge(),
                  CustomButton(title: "Se connecter", onTap: model.loginButton),
                ],
              ),
            ),
          );
  }
}
