import 'package:egczacademy/app/global.dart';
import 'package:egczacademy/views/shared/color.dart';
import 'package:egczacademy/views/shared/custom_button.dart';
import 'package:egczacademy/views/shared/custom_loader.dart';
import 'package:egczacademy/views/shared/login_input.dart';
import 'package:egczacademy/views/shared/social_button.dart';
import 'package:egczacademy/views/shared/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'welcome_view_model.dart';

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
                    controller: model.scrollController,
                    child: SizedBox(
                      width: size(context).width,
                      height: size(context).height,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          AnimatedContainer(
                              duration: const Duration(milliseconds: 400),
                              child: Image.asset(
                                imagelBigLogo,
                                width: 200.w,
                              )),
                          SizedBox(
                            height: 50.h,
                          ),
                          SizedBox(
                            height: model.flexSize.h,
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: PageView(
                                physics: const NeverScrollableScrollPhysics(),
                                controller: model.pageController,
                                children: [
                                  welcomeCenter(model),
                                  LoginInput(model: model)
                                ],
                              ),
                            ),
                          ),
                          verticalSpaceSmall(),
                          model.keyBoardVisible
                              ? const SizedBox()
                              : SocialButton(
                                  fbTap: model.fbSignIn,
                                  instaTap: () {},
                                  logoTap: model.animateToRegister,
                                )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
      ),
      viewModelBuilder: () => WelcomeViewModel(),
    );
  }
}

Widget welcomeCenter(WelcomeViewModel model) => Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        model.keyBoardVisible
            ? const SizedBox()
            : SizedBox(
                width: 250.w,
                child: Text(
                  "Stand de tir indoor pour le loisir et la competition",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    letterSpacing: 2,
                    color: kcWhite,
                    fontSize: 20.sp,
                  ),
                ),
              ),
        verticalSpaceLarge(),
        SizedBox(
            width: 220.w,
            child: CustomButton(
                title: "J'ai un compte", onTap: model.jumpToLogin)),
      ],
    );
