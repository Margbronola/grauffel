import 'package:flutter/material.dart';

import 'package:egczacademy/views/welcome/welcome_viewModel.dart';

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
          position: model.offsetAnimation,
          child: TextFormField(
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.text,
            style: TextStyle(color: kcWhite),
            focusNode: model.firstNameFocusNode,
            controller: model.firstNameController,
            validator: (value) {
              return Validator.validateName(value ?? "");
            },
            decoration: InputDecoration(
              hintText: "First Name",
              isDense: true,
            ),
          ),
        ),
        SizedBox(height: size(context).height * 0.03),
        SlideTransition(
          position: model.offsetAnimation,
          child: TextFormField(
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.text,
            style: TextStyle(color: kcWhite),
            focusNode: model.lastNameFocusNode,
            controller: model.lastNameController,
            validator: (value) {
              return Validator.validateName(value ?? "");
            },
            decoration: InputDecoration(
              hintText: "Last Name",
              isDense: true,
            ),
          ),
        ),
        SizedBox(height: size(context).height * 0.03),
        SlideTransition(
          position: model.offsetAnimation,
          child: TextFormField(
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: kcWhite),
            focusNode: model.loginFocusNode,
            controller: model.emailController,
            validator: (value) {
              return Validator.validateEmail(value ?? "");
            },
            decoration: InputDecoration(
              hintText: "Email*",
              isDense: true,
            ),
          ),
        ),
        SizedBox(height: size(context).height * 0.03),
        SlideTransition(
          position: model.offsetAnimation2,
          child: TextFormField(
            onFieldSubmitted: (String text) {
              model.loginButton();
            },
            focusNode: model.passwordFocusNode,
            style: TextStyle(color: kcWhite),
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
          position: model.offsetAnimation2,
          child: TextFormField(
            onFieldSubmitted: (String text) {
              model.loginButton();
            },
            focusNode: model.cpasswordFocusNode,
            style: TextStyle(color: kcWhite),
            obscureText: !model.cshowPassword,
            controller: model.cpasswordController,
            validator: (value) {
              return Validator.validatePassword(value ?? "");
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
