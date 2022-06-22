import 'package:egczacademy/views/shared/color.dart';
import 'package:egczacademy/views/shared/customButton.dart';
import 'package:egczacademy/views/shared/socialButton.dart';
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
            : SafeArea(
                child: Center(
                  child: Form(
                    key: model.formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              SlideTransition(
                                  position: model.paddingBottom,
                                  child: Image.asset("assets/images/logo2.png",
                                      scale: 4.w)),
                              AnimatedContainer(
                                duration: Duration(milliseconds: 300),
                                padding: EdgeInsets.only(
                                    top: model.isFocus ? 50 : 100),
                                child: SingleChildScrollView(
                                  child: Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: Column(
                                      children: [
                                        SlideTransition(
                                          position: model.offsetAnimation,
                                          child: TextFormField(
                                            textInputAction:
                                                TextInputAction.next,
                                            keyboardType:
                                                TextInputType.emailAddress,
                                            style: TextStyle(color: kcWhite),
                                            focusNode: model.loginFocusNode,
                                            controller: model.emailController,
                                            validator: (value) {
                                              return Validator.validateEmail(
                                                  value ?? "");
                                            },
                                            decoration: InputDecoration(
                                              hintText: "Adresse mail*",
                                              isDense: true,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                            height:
                                                size(context).height * 0.03),
                                        SlideTransition(
                                          position: model.offsetAnimation2,
                                          child: TextFormField(
                                            onFieldSubmitted: (String text) {
                                              model.login();
                                            },
                                            focusNode: model.passwordFocusNode,
                                            style: TextStyle(color: kcWhite),
                                            obscureText: model.showPassword,
                                            controller:
                                                model.passwordController,
                                            validator: (value) {
                                              return Validator.validatePassword(
                                                  value ?? "");
                                            },
                                            decoration: InputDecoration(
                                              suffixIcon: GestureDetector(
                                                onTap: model.toggle,
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
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        model.isFocus
                            ? SizedBox()
                            : Column(
                                children: [
                                  Text(
                                    "Stand de tir indoor pour le loisir",
                                    style: TextStyle(color: kcWhite),
                                  ),
                                  CustomButton(
                                      title: model.btnText,
                                      onTap: model.isForward
                                          ? model.login
                                          : model.play),
                                  CustomButton(
                                      title: "reset", onTap: model.reset),
                                  verticalSpaceSmall(),
                                  SocialButton(),
                                ],
                              ),
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
