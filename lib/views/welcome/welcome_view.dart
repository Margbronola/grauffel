import 'package:egczacademy/models/user_model.dart';
import 'package:egczacademy/services/global.dart';
import 'package:egczacademy/views/shared/color.dart';
import 'package:egczacademy/views/shared/customButton.dart';
import 'package:egczacademy/views/shared/customLoader.dart';
import 'package:egczacademy/views/shared/login_input.dart';
import 'package:egczacademy/views/shared/socialButton.dart';
import 'package:egczacademy/views/shared/ui_helper.dart';
import 'package:egczacademy/views/shared/widget/register_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
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
            ? const CustomLoader()
            : Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(imageOwner))),
                    child: Form(
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
                                          child: Image.asset(imagelBigLogo,
                                              scale: 4.5.w)),
                                      AnimatedContainer(
                                        duration:
                                            const Duration(milliseconds: 300),
                                        padding:
                                            const EdgeInsets.only(top: 100),
                                        child: SingleChildScrollView(
                                          child: Container(
                                              width: 333.w,
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
                                    Container(
                                      width: 333.w,
                                      child: Text(
                                        "Stand de tir indoor pour le loisir et la competition",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: kcWhite,
                                          fontSize: 22.sp,
                                        ),
                                      ),
                                    ),
                                    verticalSpaceSmall(),
                                    CustomButton(
                                        title: model.btnText,
                                        onTap: model.isLoginView
                                            ? model.loginButton
                                            : model.isRegisterView
                                                ? () {
                                                    model.registerButton(
                                                        const UserModel(
                                                            first_name:
                                                                "first_name",
                                                            last_name:
                                                                "last_name",
                                                            email: "email",
                                                            password:
                                                                "password",
                                                            c_password:
                                                                "c_password"));
                                                  }
                                                : model.animateToLogin),
                                    // CustomButton(
                                    //     title: "reset", onTap: model.reset),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          verticalSpaceSmall(),
                          SocialButton(
                            fbTap: () {},
                            instaTap: () {},
                            logoTap: model.animateToRegister,
                          )
                        ],
                      ),
                    ),
                  ),
                  model.isRegisterView
                      ? Positioned(
                          top: 30.h,
                          left: 10.w,
                          child: BackButton(
                            onPressed: () {
                              model.animateToLogin();
                            },
                            color: kcWhite,
                          ),
                        )
                      : const SizedBox(),
                ],
              ),
      ),
      viewModelBuilder: () => WelcomeViewModel(),
    );
  }
}
