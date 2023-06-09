import 'package:flutter/material.dart';

import 'package:egczacademy/views/welcome/welcome_view_model.dart';

import '../color.dart';
import '../ui_helper.dart';
import '../validator.dart';

class RegisterInput extends StatelessWidget {
  final WelcomeViewModel model;
  const RegisterInput({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SlideTransition(
          position: model.offsetAnimation1,
          child: TextFormField(
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.text,
            style: const TextStyle(color: kcWhite),
            focusNode: model.firstNameFocusNode,
            controller: model.firstNameController,
            validator: (value) {
              return Validator.validateName(value ?? "");
            },
            decoration: const InputDecoration(
              hintText: "First Name",
              isDense: true,
            ),
          ),
        ),
        SizedBox(height: size(context).height * 0.03),
        SlideTransition(
          position: model.offsetAnimation2,
          child: TextFormField(
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.text,
            style: const TextStyle(color: kcWhite),
            focusNode: model.lastNameFocusNode,
            controller: model.lastNameController,
            validator: (value) {
              return Validator.validateName(value ?? "");
            },
            decoration: const InputDecoration(
              hintText: "Last Name",
              isDense: true,
            ),
          ),
        ),
        SizedBox(height: size(context).height * 0.03),
        SlideTransition(
          position: model.offsetAnimation3,
          child: TextFormField(
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.emailAddress,
            style: const TextStyle(color: kcWhite),
            focusNode: model.emailFocusNode,
            controller: model.emailController,
            validator: (value) {
              return Validator.validateEmail(value ?? "");
            },
            decoration: const InputDecoration(
              hintText: "Email*",
              isDense: true,
            ),
          ),
        ),
        SizedBox(height: size(context).height * 0.03),
        SlideTransition(
          position: model.offsetAnimation4,
          child: TextFormField(
            onFieldSubmitted: (String text) {
              model.loginButton();
            },
            focusNode: model.passwordFocusNode,
            style: const TextStyle(color: kcWhite),
            obscureText: !model.showPassword,
            controller: model.passwordController,
            validator: (value) {
              return Validator.validatePassword(value ?? "");
            },
            decoration: InputDecoration(
              suffixIcon: GestureDetector(
                onTap: () {
                  model.toggle(cpass: false);
                },
                child: Icon(
                  model.showPassword ? Icons.visibility : Icons.visibility_off,
                  color: Colors.grey,
                ),
              ),
              hintText: "Mot de passe*",
              isDense: true,
            ),
          ),
        ),
        SizedBox(height: size(context).height * 0.03),
        SlideTransition(
          position: model.offsetAnimation5,
          child: TextFormField(
            onFieldSubmitted: (String text) {
              model.loginButton();
            },
            focusNode: model.cpasswordFocusNode,
            style: const TextStyle(color: kcWhite),
            obscureText: !model.cshowPassword,
            controller: model.cpasswordController,
            validator: (value) {
              return Validator.validateConfirmPassword(
                  value ?? "", model.cpasswordController.text);
            },
            decoration: InputDecoration(
              suffixIcon: GestureDetector(
                onTap: () {
                  model.toggle(cpass: true);
                },
                child: Icon(
                  model.cshowPassword ? Icons.visibility : Icons.visibility_off,
                  color: Colors.grey,
                ),
              ),
              hintText: "Confirm Password",
              isDense: true,
            ),
          ),
        ),
      ],
    );
  }
}
