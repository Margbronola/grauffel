import 'package:egczacademy/views/shared/customButton.dart';
import 'package:egczacademy/views/shared/socialButton.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../shared/ui_helper.dart';
import 'welcome_viewModel.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<WelcomeViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(child: Image.asset("assets/images/logo2.png")),
                  Text(
                    "Stand de tir indoor pour le loisir",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  verticalSpaceMedium(),
                  CustomButton(title: "J'AI UN COMPTE", onTap: model.goToLogin),
                  verticalSpaceLarge(),
                  SocialButton(),
                ],
              ),
            ),
          ),
        ),
      ),
      viewModelBuilder: () => WelcomeViewModel(),
    );
  }
}
