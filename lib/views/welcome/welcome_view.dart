import 'package:egczacademy/models/user_model.dart';
import 'package:egczacademy/views/shared/color.dart';
import 'package:egczacademy/views/shared/customButton.dart';
import 'package:egczacademy/views/shared/login_input.dart';
import 'package:egczacademy/views/shared/socialButton.dart';
import 'package:egczacademy/views/shared/widget/register_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import '../shared/ui_helper.dart';
import '../shared/validator.dart';
import 'welcome_viewModel.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<WelcomeViewModel>.reactive(
      onModelReady: (model) => model.init(this),
      builder: (context, model, child) => Scaffold(
        body: model.isBusy
            ? Center(child: CircularProgressIndicator())
            : Form(
                key: model.formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                SlideTransition(
                                    position: model.paddingBottom,
                                    child: Image.asset(
                                        "assets/images/logo2.png",
                                        scale: 4.5.w)),
                                AnimatedContainer(
                                  duration: Duration(milliseconds: 300),
                                  padding: EdgeInsets.only(top: 100),
                                  child: SingleChildScrollView(
                                    child: Padding(
                                        padding: const EdgeInsets.all(20),
                                        child: model.isRegisterView
                                            ? RegisterInput(
                                                model: model,
                                              )
                                            : LoginInput(model: model)),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                "Stand de tir indoor pour le loisir",
                                style: TextStyle(color: kcWhite),
                              ),
                              CustomButton(
                                  title: model.btnText,
                                  onTap: model.isLoginView
                                      ? model.loginButton
                                      : model.isRegisterView
                                          ? () {
                                              model.registerButton(UserModel(
                                                  first_name: "first_name",
                                                  last_name: "last_name",
                                                  email: "email",
                                                  password: "password",
                                                  c_password: "c_password"));
                                            }
                                          : model.goToLogin),
                              // CustomButton(
                              //     title: "reset", onTap: model.reset),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    model.isRegisterView
                                        ? "Have accout already"
                                        : "No accout yet",
                                    style: TextStyle(color: kcWhite),
                                  ),
                                  model.isRegisterView
                                      ? TextButton(
                                          onPressed: () {
                                            model.goToLogin();
                                          },
                                          child: Text("Login"))
                                      : TextButton(
                                          onPressed: () {
                                            model.gotToRegister();
                                          },
                                          child: Text("Register"))
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SocialButton(),
                  ],
                ),
              ),
      ),
      viewModelBuilder: () => WelcomeViewModel(),
    );
  }
}
