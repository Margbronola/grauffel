import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';

import '../../color.dart';
import '../../custom_button.dart';
import '../../ui_helper.dart';
import '../../validator.dart';
import 'change_password_view_model.dart';

class ChangePasswordView extends StatelessWidget {
  const ChangePasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ChangePasswordViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          backgroundColor: kcWhite,
          iconTheme: const IconThemeData(color: backgroundColor),
        ),
        body: Stack(
          children: [
            AnimatedContainer(
              decoration: const BoxDecoration(
                color: kcWhite,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              duration: const Duration(milliseconds: 300),
              child: Form(
                key: model.formKey,
                child: Column(children: [
                  verticalSpaceSmall(),
                  Text(
                    "changer le mot de passe".toUpperCase(),
                    style: TextStyle(
                        color: backgroundColor,
                        fontSize: 20.sp,
                        fontFamily: 'ProductSans',
                        letterSpacing: 1.3,
                        fontWeight: FontWeight.bold),
                  ),
                  verticalSpaceMedium(),
                  TextFormField(
                    onFieldSubmitted: (String text) {},
                    focusNode: model.passwordFocusNode,
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontFamily: 'ProductSans',
                      letterSpacing: 1.3,
                    ),
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
                          model.toggle(0);
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
                  TextFormField(
                    onFieldSubmitted: (String text) {},
                    focusNode: model.newPassFocusNode,
                    style: TextStyle(
                      fontFamily: 'ProductSans',
                      letterSpacing: 1.3,
                      fontSize: 15.sp,
                    ),
                    obscureText: !model.showNewPassword,
                    controller: model.newPassController,
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
                          model.toggle(1);
                        },
                        child: Icon(
                          model.showPassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.grey,
                        ),
                      ),
                      hintText: "Nouveau mot de passe",
                      isDense: true,
                    ),
                  ),
                  TextFormField(
                    onFieldSubmitted: (String text) {},
                    focusNode: model.cPassFocusNode,
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontFamily: 'ProductSans',
                      letterSpacing: 1.3,
                    ),
                    obscureText: !model.showCPassword,
                    controller: model.cPassController,
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
                          model.toggle(2);
                        },
                        child: Icon(
                          model.showPassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.grey,
                        ),
                      ),
                      hintText: "Ancien mot de passe",
                      isDense: true,
                    ),
                  ),
                  const Spacer(),
                  CustomButton(
                      title: "Mettre à jour",
                      onTap: () async {
                        if (model.formKey.currentState!.validate()) {
                          await model.userAPIService
                              .updatePassword(
                                  oldPassword: model.passwordController.text,
                                  newPassword: model.newPassController.text,
                                  cPassword: model.cPassController.text,
                                  token: model.userService.token!)
                              .then((value) {
                            if (value) {
                              //TODO: true
                            } else {
                              return AlertDialog(
                                title: Text(
                                  'Save The Planet',
                                  style: Theme.of(context).textTheme.headline1,
                                ),
                                content: SingleChildScrollView(
                                  child: ListBody(
                                    children: [
                                      Text(
                                        'Plant Tress and reduce Carbon Emission.',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2,
                                      ),
                                      Text(
                                        'Would you like to approve of this message?',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1,
                                      ),
                                    ],
                                  ),
                                ),
                                actions: <Widget>[
                                  TextButton(
                                    child: const Text('Approve'),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );
                            }
                          });
                        }
                      }),
                  verticalSpaceSmall()
                ]),
              ),
            ),
          ],
        ),
      ),
      viewModelBuilder: () => ChangePasswordViewModel(),
    );
  }
}
