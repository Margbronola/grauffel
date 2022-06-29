import 'package:egczacademy/models/user_model.dart';
import 'package:egczacademy/app/global.dart';
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
                  SingleChildScrollView(
                    child: Container(
                      // width: s,
                      child: Image.asset(imageOwner),
                      // decoration: BoxDecoration(
                      //     image: DecorationImage(image: AssetImage(imageOwner))),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Container(
                      width: size(context).width,
                      height: size(context).height,
                      child: Form(
                        key: model.formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                AnimatedContainer(
                                    duration: Duration(milliseconds: 400),
                                    // height: double.infinity,
                                    child: Image.asset(imagelBigLogo,
                                        scale: 4.5.w)),
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    AnimatedContainer(
                                      duration:
                                          const Duration(milliseconds: 400),
                                      padding: const EdgeInsets.only(top: 50),
                                      child: AnimatedContainer(
                                          duration:
                                              const Duration(milliseconds: 400),
                                          width: 333.w,
                                          height:
                                              model.isRegisterView ? 300 : 200,
                                          child: model.isRegisterView
                                              ? SingleChildScrollView(
                                                  child: RegisterInput(
                                                    model: model,
                                                  ),
                                                )
                                              : SingleChildScrollView(
                                                  child: LoginInput(
                                                      model: model))),
                                    )
                                  ],
                                ),
                                model.keyBoardVisible
                                    ? SizedBox()
                                    : verticalSpaceMedium(),
                                Column(
                                  children: [
                                    model.keyBoardVisible
                                        ? SizedBox()
                                        : Container(
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
                                                ? () async {
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
                                  ],
                                ),
                              ],
                            ),
                            verticalSpaceSmall(),
                            model.keyBoardVisible
                                ? const SizedBox()
                                : SocialButton(
                                    fbTap: () {},
                                    instaTap: () {},
                                    logoTap: model.animateToRegister,
                                  )
                          ],
                        ),
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
