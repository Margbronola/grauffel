import 'package:egczacademy/services/user_api_service.dart';
import 'package:egczacademy/services/user_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../../app/app.locator.dart';
import '../../color.dart';
import '../../customButton.dart';
import '../../ui_helper.dart';
import '../../validator.dart';

class ChangePassDialog extends StatefulWidget {
  final DialogRequest? request;
  final Function(DialogResponse)? completer;
  const ChangePassDialog({Key? key, this.request, this.completer})
      : super(key: key);

  @override
  State<ChangePassDialog> createState() => _ChangePassDialogState();
}

class _ChangePassDialogState extends State<ChangePassDialog> {
  final UserAPIService _userAPIService = locator<UserAPIService>();
  final UserService _userService = locator<UserService>();
  FocusNode passwordFocusNode = FocusNode();
  FocusNode newPassFocusNode = FocusNode();
  FocusNode cPassFocusNode = FocusNode();
  TextEditingController passwordController = TextEditingController();
  TextEditingController newPassController = TextEditingController();
  TextEditingController cPassController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool showPassword = false;
  bool showNewPassword = false;
  bool showCPassword = false;

  void toggle(int index) {
    switch (index) {
      case 0:
        setState(() {
          showPassword = !showPassword;
        });
        break;
      case 1:
        setState(() {
          showNewPassword = !showNewPassword;
        });
        break;
      case 2:
        setState(() {
          showCPassword = !showCPassword;
        });
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
        child: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              color: kcWhite, borderRadius: BorderRadius.circular(10)),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          height: size(context).height / 2.5.h,
          width: 334.w,
          child: Form(
            key: formKey,
            child: Column(children: [
              verticalSpaceLarge(),
              const Text("CHANGE PASSWORD"),
              TextFormField(
                onFieldSubmitted: (String text) {},
                focusNode: passwordFocusNode,
                style: TextStyle(color: backgroundColor, fontSize: 20.sp),
                obscureText: !showPassword,
                controller: passwordController,
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
                      toggle(0);
                    },
                    child: Icon(
                      showPassword ? Icons.visibility : Icons.visibility_off,
                      color: Colors.grey,
                    ),
                  ),
                  hintText: "Mot de passe*",
                  isDense: true,
                ),
              ),
              TextFormField(
                onFieldSubmitted: (String text) {},
                focusNode: newPassFocusNode,
                style: TextStyle(color: backgroundColor, fontSize: 20.sp),
                obscureText: !showNewPassword,
                controller: newPassController,
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
                      toggle(1);
                    },
                    child: Icon(
                      showPassword ? Icons.visibility : Icons.visibility_off,
                      color: Colors.grey,
                    ),
                  ),
                  hintText: "New password",
                  isDense: true,
                ),
              ),
              TextFormField(
                onFieldSubmitted: (String text) {},
                focusNode: cPassFocusNode,
                style: TextStyle(color: backgroundColor, fontSize: 20.sp),
                obscureText: !showCPassword,
                controller: cPassController,
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
                      toggle(2);
                    },
                    child: Icon(
                      showPassword ? Icons.visibility : Icons.visibility_off,
                      color: Colors.grey,
                    ),
                  ),
                  hintText: "Old password",
                  isDense: true,
                ),
              ),
              verticalSpaceMedium(),
              CustomButton(
                  title: "Save",
                  onTap: () async {
                    if (formKey.currentState!.validate()) {
                      await _userAPIService
                          .updatePassword(
                              oldPassword: passwordController.text,
                              newPassword: newPassController.text,
                              cPassword: cPassController.text,
                              token: _userService.token!)
                          .then((value) {
                        if (value) {
                          widget.completer!(DialogResponse(confirmed: true));
                        }
                      });
                    }
                  }),
            ]),
          ),
        ),
        Positioned(
            top: 0,
            right: 0,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.close,
                color: Colors.grey,
              ),
            )),
      ],
    ));
  }
}
