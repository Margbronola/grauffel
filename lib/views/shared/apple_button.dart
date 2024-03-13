import 'package:egczacademy/views/shared/widget/circle_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app/global.dart';
import 'color.dart';

class AppleButton extends StatelessWidget {
  final Function() appleTap;
  final Function() instaTap;
  final Function() logoTap;
  const AppleButton({
    Key? key,
    required this.appleTap,
    required this.instaTap,
    required this.logoTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 45.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleButton(
                onTap: appleTap,
                child: Row(
                  children: [
                    Image.asset(
                      appleLogo,
                      height: 30.h,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      "Sign in with Apple",
                      style: TextStyle(color: kcWhite),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget customDivider() => SizedBox(
        height: 30.h,
        child: const VerticalDivider(
          color: kcWhite,
          thickness: 1.5,
        ),
      );
}
