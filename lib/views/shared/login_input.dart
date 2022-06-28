import 'package:egczacademy/views/shared/ui_helper.dart';
import 'package:egczacademy/views/shared/validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../welcome/welcome_viewModel.dart';
import 'color.dart';

class LoginInput extends StatelessWidget {
  final WelcomeViewModel model;
  const LoginInput({
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
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: kcWhite),
            focusNode: model.loginFocusNode,
            controller: model.emailController,
            validator: (value) {
              return Validator.validateEmail(value ?? "");
            },
            decoration: InputDecoration(
              hintText: "Adresse mail*",
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
      ],
    );
  }
}
