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

  @override
  Widget build(BuildContext context) {
    return model.isBusy
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : Container(
            height: 380.h,
            width: 354.w,
            color: kcWhite,
            padding: EdgeInsets.all(30.w),
            child: Form(
              key: model.formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(color: backgroundColor, fontSize: 20.sp),
                    focusNode: model.emailFocusNode,
                    controller: model.emailController,
                    validator: (value) {
                      return Validator.validateEmail(value ?? "");
                    },
                    decoration: const InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: buttonColor),
                      ),
                      hintStyle: TextStyle(color: backgroundColor),
                      hintText: "Adresse mail*",
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: backgroundColor),
                      ),
                      isDense: true,
                    ),
                  ),
                  SizedBox(height: size(context).height * 0.03),
                  TextFormField(
                    onFieldSubmitted: (String text) async {
                      print("login");
                      await model.loginButton();
                    },
                    focusNode: model.passwordFocusNode,
                    style: TextStyle(color: backgroundColor, fontSize: 20.sp),
                    obscureText: !model.showPassword,
                    controller: model.passwordController,
                    validator: (value) {
                      return Validator.validatePassword(value ?? "");
                    },
                    decoration: InputDecoration(
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: buttonColor),
                      ),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: backgroundColor),
                      ),
                      hintStyle: const TextStyle(color: backgroundColor),
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
                      hintText: "Mot de passe*",
                      isDense: true,
                    ),
                  ),
                  verticalSpaceMedium(),
                  verticalSpaceLarge(),
                  CustomButton(title: "Se connecter", onTap: model.loginButton),
                ],
              ),
            ),
          );
  }
}
