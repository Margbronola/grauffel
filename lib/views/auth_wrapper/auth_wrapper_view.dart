import 'package:egczacademy/views/home/home.dart';
import 'package:egczacademy/views/welcome/welcome_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'auth_wrapper_viewModel.dart';

class AuthWrapperView extends StatelessWidget {
  const AuthWrapperView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AuthWrapperViewModel>.reactive(
      builder: (context, model, child) =>
          model.data == null ? WelcomeView() : Home(),
      viewModelBuilder: () => AuthWrapperViewModel(),
    );
  }
}
